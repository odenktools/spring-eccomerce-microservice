package com.odenktools.locationservice.service;

import com.odenktools.locationservice.domain.Countries;
import com.odenktools.locationservice.repository.CountriesRepository;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import java.util.Calendar;

@Service
public class CountriesServiceImpl implements CountriesService {

	private final Logger log = LoggerFactory.getLogger(getClass());

	@Autowired
	private CountriesRepository repository;

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Countries findByName(String countryName) {
		Assert.hasLength(countryName);
		return repository.findByName(countryName);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Countries findByCode(String code) {
		Assert.hasLength(code);
		return repository.findByCode(code);
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Iterable<Countries> findAllCountries() {
		return repository.findAll();
	}

	/**
	 * {@inheritDoc}
	 */
	@Override
	public Countries create(Countries country) {

		Countries existing = repository.findByCode(country.getCode());
		Assert.isNull(existing, "country already exists: " + country.getCode());

		Countries countries = new Countries();
		countries.setCode(country.getCode());
		countries.setActive(country.getActive());
		countries.setName(country.getName());
		countries.setSlug(country.getSlug());
		countries.setCreatedAt(Calendar.getInstance());

		repository.save(countries);

		log.info("new country has been created: " + country.getName());

		return countries;
	}
}