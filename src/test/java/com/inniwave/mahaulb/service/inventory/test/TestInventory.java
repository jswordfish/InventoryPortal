package com.inniwave.mahaulb.service.inventory.test;

import java.util.Date;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.data.jpa.JpaRepositoriesAutoConfiguration;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.transaction.annotation.Transactional;

import com.innowave.mahaulb.common.dao.TmUlb;
import com.innowave.mahaulb.common.dao.master.TmCmDepartment;
import com.innowave.mahaulb.common.repository.TmCmDepartmentRepo;
import com.innowave.mahaulb.common.repository.TmUlbMasterRepo;
import com.innowave.mahaulb.repository.inventory.dao.master.TmInvMaterialType;
import com.innowave.mahaulb.repository.inventory.dao.master.TmInvMaterialTypeStoreMapping;
import com.innowave.mahaulb.repository.inventory.dao.master.TmInvStore;
import com.innowave.mahaulb.repository.inventory.repo.MaterialTypeRepo;
import com.innowave.mahaulb.repository.inventory.repo.MaterialTypeStoreMappingRepository;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:test-config.xml"})
@Transactional
@WebAppConfiguration
@EnableAutoConfiguration(exclude={DataSourceAutoConfiguration.class, JpaRepositoriesAutoConfiguration.class})
public class TestInventory {
	
	
	
	@Autowired
	TmUlbMasterRepo ulbMasterRepo;
	
	@Autowired
    MockHttpSession session;
	
	@Autowired
	MaterialTypeRepo materialTypeRepo;
	
	@Autowired
	TmCmDepartmentRepo depRepo;
	
	@Autowired
	MaterialTypeStoreMappingRepository mappingRep;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	@Test
	public void testGetDepartments() {
//		List<Object[]> deps = depRepo.getDeparmentList();
//		List<TmCmDepartment> departments = new ArrayList<>();
//		for(Object obj[] : deps) {
//			TmCmDepartment department = new TmCmDepartment();
//			
//				department.setDepId((Integer)obj[0]);
//				department.setDepCode((String)obj[1]);
//				department.setDepNameEn((String)obj[2]);
//				department.setDepNameRg((String) obj[3]);
//				departments.add(department);
//			
//		}
		
		List<TmCmDepartment> departments = materialTypeRepo.getAllDepartments(22);
			for(TmCmDepartment cmDepartment : departments) {
				System.out.println(cmDepartment.getDepCode());
				
				System.out.println(cmDepartment.getDepNameEn());
			}
	}
	
	@Test
	@Rollback(value=false)
	public void createMaterialType() {
		TmInvMaterialType materialType = new TmInvMaterialType();
		TmUlb ulb = ulbMasterRepo.getTmULB(115);
		materialType.setMaterialTypeId(1004);
		materialType.setMaterialTypeCode("004");
		materialType.setMaterialTypeName("Test04");
		materialType.setTmUlb(ulb);
		materialType.setStatus(0);
		materialType.setCreatedDate(new Date());
		materialTypeRepo.saveOrUpdate(materialType);
		
	}
	

	@Test
	@Rollback(value=false)
	public void testCreateTestStores() {
		TmInvStore store1 = new TmInvStore();
		TmCmDepartment department = null;
		List<TmCmDepartment> departments = materialTypeRepo.getAllDepartments(22);
		for(TmCmDepartment cmDepartment : departments) {
			department = cmDepartment;
			break;
		}
		
		TmUlb ulb = ulbMasterRepo.getTmULB(115);
		store1.setDepId(department.getDepId());
		store1.setStoreId(5);
		store1.setStoreName("Store 5");
		store1.setStoreCode("St005");
		store1.setStoreDesc("Store 5 Desc");
		store1.setCreatedDate(new Date());
		store1.setTmUlb(ulb);
		sessionFactory.getCurrentSession().save(store1);
		
	}
	
	@Test
	@Rollback(value=false)
	public void testCreateMaterialTypeToStoreMapping() {
		TmInvMaterialTypeStoreMapping mapping = new TmInvMaterialTypeStoreMapping();
		mapping.setCreatedDate(new Date());
		//mapping.setMaterialTypeStoreMapId(2);
		
		TmInvStore store1 = new TmInvStore();
		store1.setStoreId(3);
		store1.setStoreName("Store 3");
		store1.setStoreCode("St003");
		mapping.setTmInvStore(store1);
		
		TmInvMaterialType materialType = new TmInvMaterialType();
		TmUlb ulb = ulbMasterRepo.getTmULB(115);
		materialType.setMaterialTypeId(1003);
		materialType.setMaterialTypeCode("003");
		materialType.setMaterialTypeName("Test03");
		materialType.setTmUlb(ulb);
		mapping.setTmInvMaterialType(materialType);
		
		mapping.setTmUlb(ulb);
		
		mappingRep.saveOrUpdate(mapping);
		
	}
	
	@Test
	@Rollback(value=false)
	public void testGetStores() {
		List<TmInvStore> stores = mappingRep.getAllStores(24);
		
		for(TmInvStore store : stores) {
			System.out.println(store.getStoreName());
		}
	}
	
	@Test
	@Rollback(value=false)
	public void testCreateMaterial() {
		/**
		 * The query above results in many joins and is expensive. This is a temp solution till i figure out a better performant solution for this.
		 */
		String nativeQry = "INSERT INTO \r\n" + 
				"  inventory.tm_inv_material\r\n" + 
				"(\r\n" + 
				"  material_id,\r\n" + 
				"  ulb_id,\r\n" + 
				"  material_type_id,\r\n" + 
				"  material_code,\r\n" + 
				"  material_name,\r\n" + 
				"  material_desc,\r\n" + 
				"  lookup_det_id_inv_type,\r\n" + 
				"  lookup_det_id_base_uom,\r\n" + 
				"  lookup_det_id_purchase_uom,\r\n" + 
				"  expense_account_code,\r\n" + 
				"  lookup_det_id_usage_class,\r\n" + 
				"  lookup_det_id_stocking_uom,\r\n" + 
				"  min_qty,\r\n" + 
				"  max_qty,\r\n" + 
				"  reorder_level,\r\n" + 
				"  reorder_qty,\r\n" + 
				"  shelf_lif_control_yn,\r\n" + 
				"  rate_per_unit,\r\n" + 
				"  status,\r\n" + 
				"  created_by,\r\n" + 
				"  created_date,\r\n" + 
				"  updated_by,\r\n" + 
				"  updated_date,\r\n" + 
				"  mac_id,\r\n" + 
				"  ip_address,\r\n" + 
				"  device_from\r\n" + 
				")\r\n" + 
				"VALUES (\r\n" + 
				"  10,\r\n" + 
				"  115,\r\n" + 
				"  1000,\r\n" + 
				"  '001',\r\n" + 
				"  'Test01',\r\n" + 
				"  'na',\r\n" + 
				"  1,\r\n" + 
				"  10,\r\n" + 
				"  15,\r\n" + 
				"  5,\r\n" + 
				"  20,\r\n" + 
				"  30,\r\n" + 
				"  1,\r\n" + 
				"  100000,\r\n" + 
				"  50,\r\n" + 
				"  50,\r\n" + 
				"  'y',\r\n" + 
				"  45,\r\n" + 
				"  NULL,\r\n" + 
				"  NULL,\r\n" + 
				"  '2018-02-10',\r\n" + 
				"  NULL,\r\n" + 
				"  NULL,\r\n" + 
				"  NULL,\r\n" + 
				"  NULL,\r\n" + 
				"  NULL\r\n" + 
				")";
		Session currentSession = sessionFactory.getCurrentSession();
		 SQLQuery query = currentSession.createSQLQuery(nativeQry);
		 query.executeUpdate();
	}
}
