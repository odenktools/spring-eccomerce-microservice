package com.odenktools.locationservice.repository;

import com.odenktools.locationservice.domain.Regions;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RegionsRepository extends CrudRepository<Regions, String> {
	Iterable<Regions> findRegionsByName(String regionsName);
}