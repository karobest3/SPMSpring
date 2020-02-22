package com.ntk.spm.controller;

import com.ntk.spm.model.Brand;
import com.ntk.spm.service.BrandService;
import com.ntk.spm.service.impl.BrandServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.util.UriComponentsBuilder;

import javax.validation.Valid;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@CrossOrigin("*")
public class BrandController {
    @Autowired
    private BrandService brandService = new BrandServiceImpl();

    @RequestMapping(value = "/brands", method = RequestMethod.GET)
    public ResponseEntity<List<Brand>> listAllBrands() {
        List<Brand> brands = brandService.findAll();
        if (brands.isEmpty()) {
            return new ResponseEntity<List<Brand>>(HttpStatus.NO_CONTENT);//You many decide to return HttpStatus.NOT_FOUND
        }
        return new ResponseEntity<List<Brand>>(brands, HttpStatus.OK);
    }


    //-------------------Retrieve Single Brand--------------------------------------------------------

    @RequestMapping(value = "/brands/{id}", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<Brand> getBrand(@PathVariable("id") long id) {
        System.out.println("Fetching Brand with id " + id);
        Brand brand = brandService.findById(id);
        if (brand == null) {
            System.out.println("Brand with id " + id + " not found");
            return new ResponseEntity<Brand>(HttpStatus.NOT_FOUND);
        }
        return new ResponseEntity<Brand>(brand, HttpStatus.OK);
    }

    //-------------------Create a Brand--------------------------------------------------------

    @RequestMapping(value = "/brands", method = RequestMethod.POST)
    public ResponseEntity<?> createBrand(@Valid @RequestBody Brand brand, UriComponentsBuilder ucBuilder) {
        System.out.println("Creating Brand " + brand.getName());
        brandService.save(brand);
        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/brands/{id}").buildAndExpand(brand.getId()).toUri());
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

    //------------------- Update a Brand --------------------------------------------------------

    @RequestMapping(value = "/brands/{id}", method = RequestMethod.PUT)
    public ResponseEntity<Brand> updateBrand(@PathVariable("id") long id, @RequestBody Brand brand) {
        System.out.println("Updating Brand " + id);

        Brand currentBrand = brandService.findById(id);

        if (currentBrand == null) {
            System.out.println("Brand with id " + id + " not found");
            return new ResponseEntity<Brand>(HttpStatus.NOT_FOUND);
        }

        currentBrand.setName(brand.getName());

        brandService.save(currentBrand);
        return new ResponseEntity<Brand>(currentBrand, HttpStatus.OK);
    }

    //------------------- Delete a Brand --------------------------------------------------------

    @RequestMapping(value = "/brands/{id}", method = RequestMethod.DELETE)
    public ResponseEntity<Brand> deleteBrand(@PathVariable("id") long id) {
        System.out.println("Fetching & Deleting Brand with id " + id);

        Brand brand = brandService.findById(id);
        if (brand == null) {
            System.out.println("Unable to delete. Brand with id " + id + " not found");
            return new ResponseEntity<Brand>(HttpStatus.NOT_FOUND);
        }
        brandService.remove(id);
        return new ResponseEntity<Brand>(HttpStatus.NO_CONTENT);
    }
}
