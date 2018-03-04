package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Countries;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface CountriesService {

    /**
     * Finds Countries
     *
     * @return found Countries
     */
    Iterable<Countries> findAllCountries();


    Page<Countries> findAllPaging(Pageable pageable);

    /**
     * Finds Countries by given name
     *
     * @param countryName
     * @return found Countries
     */
    Countries findByName(String countryName);

    /**
     * Finds Countries by given name
     *
     * @param code
     * @return found Countries
     */
    Countries findByCode(String code);

    /**
     * Create Countries
     *
     * @param country Countries models
     * @return Countries
     */
    Countries create(Countries country);
}