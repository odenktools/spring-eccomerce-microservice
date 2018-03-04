package com.odenktools.locationservice.repository;

import com.odenktools.locationservice.domain.Countries;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.querydsl.QueryDslPredicateExecutor;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

/**
 * CountriesRepository.
 *
 * @author odenktools
 */
@Repository
public interface CountriesRepository extends JpaRepository<Countries, String>, QueryDslPredicateExecutor<Countries> {
    Countries findByName(String name);

    Countries findByCode(String code);

    @Query(value = "select * from countries order by rand() \n#pageable\n",
            countQuery = "select count(*) from countries",
            nativeQuery = true)
    Page<Countries> findAllPaging(Pageable pageable);
}
