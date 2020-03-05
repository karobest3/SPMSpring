package com.ntk.spm.controller;

import com.ntk.spm.dto.ListPhonesDTO;
import com.ntk.spm.model.Phone;
import com.ntk.spm.security.JwtTokenUtil;
import com.ntk.spm.service.PhoneService;
import com.ntk.spm.service.impl.PhoneServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.Map;

@RestController
@CrossOrigin(origins = "*", allowedHeaders = "*", exposedHeaders = "Authorization")
@RequestMapping("")
public class PhoneController {
    @Autowired(required = false)
    AuthenticationManager authenticationManager;
    @Autowired
    JwtTokenUtil jwtTokenUtil;
    @Autowired
    private PhoneService phoneService = new PhoneServiceImpl();

    //-------------------Retrieve All Phone--------------------------------------------------------

    @RequestMapping(value = "/phones/{brand}", params = {"page","size","search"}, method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Page<ListPhonesDTO>> listAllCustomers(@PathVariable("brand") String brand, @RequestParam("search") String search, @RequestParam("page") int page, @RequestParam("size") int size) {
        Page<ListPhonesDTO> phones = phoneService.findProduct(brand,search,PageRequest.of(page,size));
        if (phones.isEmpty()) {
            return new ResponseEntity<Page<ListPhonesDTO>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Page<ListPhonesDTO>>(phones, HttpStatus.OK);
    }

    @RequestMapping(value = "/phones/{brand}", params = {"id"}, method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Phone> getPhoneById(@PathVariable("brand") String brand, @RequestParam("id") Long id) {
        Phone phones = phoneService.findById(id);
        if (phones == null) {
            return new ResponseEntity<Phone>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<Phone>(phones, HttpStatus.OK);
    }
    //-------------------Retrieve Single Phone--------------------------------------------------------

//    @RequestMapping(value = "/phones/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
//    public ResponseEntity<Phone> getCustomer(@PathVariable("id") long id) {
//        System.out.println("Fetching Phone with id " + id);
//        Phone phone = phoneService.findById(id);
//        if (phone == null) {
//            System.out.println("Phone with id " + id + " not found");
//            return new ResponseEntity<Phone>(HttpStatus.NOT_FOUND);
//        }
//        return new ResponseEntity<Phone>(phone, HttpStatus.OK);
//    }

    //-------------------Create a Phone--------------------------------------------------------

    @RequestMapping(value = "/phones", method = RequestMethod.POST)
    public ResponseEntity<?> createCustomer(@Valid @RequestBody Phone phone, UriComponentsBuilder ucBuilder) {
        System.out.println("Creating Phone " + phone.getName());
        phoneService.save(phone);
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/phones/{id}").buildAndExpand(phone.getId()).toUri());
        return new ResponseEntity<Void>(headers, HttpStatus.OK);
    }

    @ResponseStatus(HttpStatus.BAD_REQUEST)
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public Map<String, String> handleValidationExceptions(
            MethodArgumentNotValidException ex) {
        Map<String, String> errors = new HashMap<>();
        ex.getBindingResult().getAllErrors().forEach((error) -> {
            String fieldName = ((FieldError) error).getField();
            String errorMessage = error.getDefaultMessage();
            errors.put(fieldName, errorMessage);
        });
        return errors;
    }

    //------------------- Update a Phone --------------------------------------------------------

    @RequestMapping(value = "/phones/{id}", method = RequestMethod.PUT)
    public ResponseEntity<Phone> updateCustomer(@PathVariable("id") long id, @RequestBody Phone phone) {
        System.out.println("Updating Phone " + id);

        Phone currentPhone = phoneService.findById(id);

        if (currentPhone == null) {
            System.out.println("Phone with id " + id + " not found");
            return new ResponseEntity<Phone>(HttpStatus.NOT_FOUND);
        }

        currentPhone.setName(phone.getName());
        currentPhone.setDescription(phone.getDescription());
        currentPhone.setPrice(phone.getPrice());
        currentPhone.setId(phone.getId());

        phoneService.save(currentPhone);
        return new ResponseEntity<Phone>(currentPhone, HttpStatus.OK);
    }

    //------------------- Delete a Customer --------------------------------------------------------

    @RequestMapping(value = "/phones/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Phone> deleteCustomer(@PathVariable("id") long id) {
        System.out.println("Fetching & Deleting Phone with id " + id);

        Phone phone = phoneService.findById(id);
        if (phone == null) {
            System.out.println("Unable to delete. Phone with id " + id + " not found");
            return new ResponseEntity<Phone>(HttpStatus.NOT_FOUND);
        }

        phoneService.remove(id);
        return new ResponseEntity<Phone>(HttpStatus.NO_CONTENT);
    }
}