package com.odenktools.locationservice.repository;

import com.odenktools.locationservice.domain.Countries;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CountriesRepository extends CrudRepository<Countries, String> {
	Countries findCountriesByName(String name);
}