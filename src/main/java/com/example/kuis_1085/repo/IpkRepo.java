/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.example.kuis_1085.repo;
import com.example.kuis_1085.entity.Ipk;
import java.util.List;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
/**
 *
 * @author PC-25-320
 */

public interface IpkRepo extends CrudRepository<Ipk, Long> {

    @Query("select p from Ipk p")
    public List<Ipk> findAllIpk();
}
