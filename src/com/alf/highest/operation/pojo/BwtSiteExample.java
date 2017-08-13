package com.alf.highest.operation.pojo;

import java.util.ArrayList;
import java.util.List;

public class BwtSiteExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BwtSiteExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andSiteidIsNull() {
            addCriterion("siteid is null");
            return (Criteria) this;
        }

        public Criteria andSiteidIsNotNull() {
            addCriterion("siteid is not null");
            return (Criteria) this;
        }

        public Criteria andSiteidEqualTo(Integer value) {
            addCriterion("siteid =", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidNotEqualTo(Integer value) {
            addCriterion("siteid <>", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidGreaterThan(Integer value) {
            addCriterion("siteid >", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidGreaterThanOrEqualTo(Integer value) {
            addCriterion("siteid >=", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidLessThan(Integer value) {
            addCriterion("siteid <", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidLessThanOrEqualTo(Integer value) {
            addCriterion("siteid <=", value, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidIn(List<Integer> values) {
            addCriterion("siteid in", values, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidNotIn(List<Integer> values) {
            addCriterion("siteid not in", values, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidBetween(Integer value1, Integer value2) {
            addCriterion("siteid between", value1, value2, "siteid");
            return (Criteria) this;
        }

        public Criteria andSiteidNotBetween(Integer value1, Integer value2) {
            addCriterion("siteid not between", value1, value2, "siteid");
            return (Criteria) this;
        }

        public Criteria andSitenameIsNull() {
            addCriterion("sitename is null");
            return (Criteria) this;
        }

        public Criteria andSitenameIsNotNull() {
            addCriterion("sitename is not null");
            return (Criteria) this;
        }

        public Criteria andSitenameEqualTo(String value) {
            addCriterion("sitename =", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameNotEqualTo(String value) {
            addCriterion("sitename <>", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameGreaterThan(String value) {
            addCriterion("sitename >", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameGreaterThanOrEqualTo(String value) {
            addCriterion("sitename >=", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameLessThan(String value) {
            addCriterion("sitename <", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameLessThanOrEqualTo(String value) {
            addCriterion("sitename <=", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameLike(String value) {
            addCriterion("sitename like", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameNotLike(String value) {
            addCriterion("sitename not like", value, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameIn(List<String> values) {
            addCriterion("sitename in", values, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameNotIn(List<String> values) {
            addCriterion("sitename not in", values, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameBetween(String value1, String value2) {
            addCriterion("sitename between", value1, value2, "sitename");
            return (Criteria) this;
        }

        public Criteria andSitenameNotBetween(String value1, String value2) {
            addCriterion("sitename not between", value1, value2, "sitename");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationIsNull() {
            addCriterion("siteabbreviation is null");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationIsNotNull() {
            addCriterion("siteabbreviation is not null");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationEqualTo(String value) {
            addCriterion("siteabbreviation =", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationNotEqualTo(String value) {
            addCriterion("siteabbreviation <>", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationGreaterThan(String value) {
            addCriterion("siteabbreviation >", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationGreaterThanOrEqualTo(String value) {
            addCriterion("siteabbreviation >=", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationLessThan(String value) {
            addCriterion("siteabbreviation <", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationLessThanOrEqualTo(String value) {
            addCriterion("siteabbreviation <=", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationLike(String value) {
            addCriterion("siteabbreviation like", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationNotLike(String value) {
            addCriterion("siteabbreviation not like", value, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationIn(List<String> values) {
            addCriterion("siteabbreviation in", values, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationNotIn(List<String> values) {
            addCriterion("siteabbreviation not in", values, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationBetween(String value1, String value2) {
            addCriterion("siteabbreviation between", value1, value2, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andSiteabbreviationNotBetween(String value1, String value2) {
            addCriterion("siteabbreviation not between", value1, value2, "siteabbreviation");
            return (Criteria) this;
        }

        public Criteria andDutypeopleIsNull() {
            addCriterion("dutypeople is null");
            return (Criteria) this;
        }

        public Criteria andDutypeopleIsNotNull() {
            addCriterion("dutypeople is not null");
            return (Criteria) this;
        }

        public Criteria andDutypeopleEqualTo(String value) {
            addCriterion("dutypeople =", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleNotEqualTo(String value) {
            addCriterion("dutypeople <>", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleGreaterThan(String value) {
            addCriterion("dutypeople >", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleGreaterThanOrEqualTo(String value) {
            addCriterion("dutypeople >=", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleLessThan(String value) {
            addCriterion("dutypeople <", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleLessThanOrEqualTo(String value) {
            addCriterion("dutypeople <=", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleLike(String value) {
            addCriterion("dutypeople like", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleNotLike(String value) {
            addCriterion("dutypeople not like", value, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleIn(List<String> values) {
            addCriterion("dutypeople in", values, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleNotIn(List<String> values) {
            addCriterion("dutypeople not in", values, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleBetween(String value1, String value2) {
            addCriterion("dutypeople between", value1, value2, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutypeopleNotBetween(String value1, String value2) {
            addCriterion("dutypeople not between", value1, value2, "dutypeople");
            return (Criteria) this;
        }

        public Criteria andDutyphoneIsNull() {
            addCriterion("dutyphone is null");
            return (Criteria) this;
        }

        public Criteria andDutyphoneIsNotNull() {
            addCriterion("dutyphone is not null");
            return (Criteria) this;
        }

        public Criteria andDutyphoneEqualTo(String value) {
            addCriterion("dutyphone =", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneNotEqualTo(String value) {
            addCriterion("dutyphone <>", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneGreaterThan(String value) {
            addCriterion("dutyphone >", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneGreaterThanOrEqualTo(String value) {
            addCriterion("dutyphone >=", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneLessThan(String value) {
            addCriterion("dutyphone <", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneLessThanOrEqualTo(String value) {
            addCriterion("dutyphone <=", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneLike(String value) {
            addCriterion("dutyphone like", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneNotLike(String value) {
            addCriterion("dutyphone not like", value, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneIn(List<String> values) {
            addCriterion("dutyphone in", values, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneNotIn(List<String> values) {
            addCriterion("dutyphone not in", values, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneBetween(String value1, String value2) {
            addCriterion("dutyphone between", value1, value2, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andDutyphoneNotBetween(String value1, String value2) {
            addCriterion("dutyphone not between", value1, value2, "dutyphone");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNull() {
            addCriterion("province is null");
            return (Criteria) this;
        }

        public Criteria andProvinceIsNotNull() {
            addCriterion("province is not null");
            return (Criteria) this;
        }

        public Criteria andProvinceEqualTo(Integer value) {
            addCriterion("province =", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotEqualTo(Integer value) {
            addCriterion("province <>", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThan(Integer value) {
            addCriterion("province >", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceGreaterThanOrEqualTo(Integer value) {
            addCriterion("province >=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThan(Integer value) {
            addCriterion("province <", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceLessThanOrEqualTo(Integer value) {
            addCriterion("province <=", value, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceIn(List<Integer> values) {
            addCriterion("province in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotIn(List<Integer> values) {
            addCriterion("province not in", values, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceBetween(Integer value1, Integer value2) {
            addCriterion("province between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andProvinceNotBetween(Integer value1, Integer value2) {
            addCriterion("province not between", value1, value2, "province");
            return (Criteria) this;
        }

        public Criteria andCityIsNull() {
            addCriterion("city is null");
            return (Criteria) this;
        }

        public Criteria andCityIsNotNull() {
            addCriterion("city is not null");
            return (Criteria) this;
        }

        public Criteria andCityEqualTo(Integer value) {
            addCriterion("city =", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotEqualTo(Integer value) {
            addCriterion("city <>", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThan(Integer value) {
            addCriterion("city >", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityGreaterThanOrEqualTo(Integer value) {
            addCriterion("city >=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThan(Integer value) {
            addCriterion("city <", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityLessThanOrEqualTo(Integer value) {
            addCriterion("city <=", value, "city");
            return (Criteria) this;
        }

        public Criteria andCityIn(List<Integer> values) {
            addCriterion("city in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotIn(List<Integer> values) {
            addCriterion("city not in", values, "city");
            return (Criteria) this;
        }

        public Criteria andCityBetween(Integer value1, Integer value2) {
            addCriterion("city between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andCityNotBetween(Integer value1, Integer value2) {
            addCriterion("city not between", value1, value2, "city");
            return (Criteria) this;
        }

        public Criteria andAreaIsNull() {
            addCriterion("area is null");
            return (Criteria) this;
        }

        public Criteria andAreaIsNotNull() {
            addCriterion("area is not null");
            return (Criteria) this;
        }

        public Criteria andAreaEqualTo(Integer value) {
            addCriterion("area =", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotEqualTo(Integer value) {
            addCriterion("area <>", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThan(Integer value) {
            addCriterion("area >", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaGreaterThanOrEqualTo(Integer value) {
            addCriterion("area >=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThan(Integer value) {
            addCriterion("area <", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaLessThanOrEqualTo(Integer value) {
            addCriterion("area <=", value, "area");
            return (Criteria) this;
        }

        public Criteria andAreaIn(List<Integer> values) {
            addCriterion("area in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotIn(List<Integer> values) {
            addCriterion("area not in", values, "area");
            return (Criteria) this;
        }

        public Criteria andAreaBetween(Integer value1, Integer value2) {
            addCriterion("area between", value1, value2, "area");
            return (Criteria) this;
        }

        public Criteria andAreaNotBetween(Integer value1, Integer value2) {
            addCriterion("area not between", value1, value2, "area");
            return (Criteria) this;
        }

        public Criteria andStreetIsNull() {
            addCriterion("street is null");
            return (Criteria) this;
        }

        public Criteria andStreetIsNotNull() {
            addCriterion("street is not null");
            return (Criteria) this;
        }

        public Criteria andStreetEqualTo(Integer value) {
            addCriterion("street =", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetNotEqualTo(Integer value) {
            addCriterion("street <>", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetGreaterThan(Integer value) {
            addCriterion("street >", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetGreaterThanOrEqualTo(Integer value) {
            addCriterion("street >=", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetLessThan(Integer value) {
            addCriterion("street <", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetLessThanOrEqualTo(Integer value) {
            addCriterion("street <=", value, "street");
            return (Criteria) this;
        }

        public Criteria andStreetIn(List<Integer> values) {
            addCriterion("street in", values, "street");
            return (Criteria) this;
        }

        public Criteria andStreetNotIn(List<Integer> values) {
            addCriterion("street not in", values, "street");
            return (Criteria) this;
        }

        public Criteria andStreetBetween(Integer value1, Integer value2) {
            addCriterion("street between", value1, value2, "street");
            return (Criteria) this;
        }

        public Criteria andStreetNotBetween(Integer value1, Integer value2) {
            addCriterion("street not between", value1, value2, "street");
            return (Criteria) this;
        }

        public Criteria andSiteaccountIsNull() {
            addCriterion("siteaccount is null");
            return (Criteria) this;
        }

        public Criteria andSiteaccountIsNotNull() {
            addCriterion("siteaccount is not null");
            return (Criteria) this;
        }

        public Criteria andSiteaccountEqualTo(String value) {
            addCriterion("siteaccount =", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountNotEqualTo(String value) {
            addCriterion("siteaccount <>", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountGreaterThan(String value) {
            addCriterion("siteaccount >", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountGreaterThanOrEqualTo(String value) {
            addCriterion("siteaccount >=", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountLessThan(String value) {
            addCriterion("siteaccount <", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountLessThanOrEqualTo(String value) {
            addCriterion("siteaccount <=", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountLike(String value) {
            addCriterion("siteaccount like", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountNotLike(String value) {
            addCriterion("siteaccount not like", value, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountIn(List<String> values) {
            addCriterion("siteaccount in", values, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountNotIn(List<String> values) {
            addCriterion("siteaccount not in", values, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountBetween(String value1, String value2) {
            addCriterion("siteaccount between", value1, value2, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSiteaccountNotBetween(String value1, String value2) {
            addCriterion("siteaccount not between", value1, value2, "siteaccount");
            return (Criteria) this;
        }

        public Criteria andSitepwdIsNull() {
            addCriterion("sitepwd is null");
            return (Criteria) this;
        }

        public Criteria andSitepwdIsNotNull() {
            addCriterion("sitepwd is not null");
            return (Criteria) this;
        }

        public Criteria andSitepwdEqualTo(String value) {
            addCriterion("sitepwd =", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdNotEqualTo(String value) {
            addCriterion("sitepwd <>", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdGreaterThan(String value) {
            addCriterion("sitepwd >", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdGreaterThanOrEqualTo(String value) {
            addCriterion("sitepwd >=", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdLessThan(String value) {
            addCriterion("sitepwd <", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdLessThanOrEqualTo(String value) {
            addCriterion("sitepwd <=", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdLike(String value) {
            addCriterion("sitepwd like", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdNotLike(String value) {
            addCriterion("sitepwd not like", value, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdIn(List<String> values) {
            addCriterion("sitepwd in", values, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdNotIn(List<String> values) {
            addCriterion("sitepwd not in", values, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdBetween(String value1, String value2) {
            addCriterion("sitepwd between", value1, value2, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andSitepwdNotBetween(String value1, String value2) {
            addCriterion("sitepwd not between", value1, value2, "sitepwd");
            return (Criteria) this;
        }

        public Criteria andAddressIsNull() {
            addCriterion("address is null");
            return (Criteria) this;
        }

        public Criteria andAddressIsNotNull() {
            addCriterion("address is not null");
            return (Criteria) this;
        }

        public Criteria andAddressEqualTo(String value) {
            addCriterion("address =", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotEqualTo(String value) {
            addCriterion("address <>", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThan(String value) {
            addCriterion("address >", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressGreaterThanOrEqualTo(String value) {
            addCriterion("address >=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThan(String value) {
            addCriterion("address <", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLessThanOrEqualTo(String value) {
            addCriterion("address <=", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressLike(String value) {
            addCriterion("address like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotLike(String value) {
            addCriterion("address not like", value, "address");
            return (Criteria) this;
        }

        public Criteria andAddressIn(List<String> values) {
            addCriterion("address in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotIn(List<String> values) {
            addCriterion("address not in", values, "address");
            return (Criteria) this;
        }

        public Criteria andAddressBetween(String value1, String value2) {
            addCriterion("address between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andAddressNotBetween(String value1, String value2) {
            addCriterion("address not between", value1, value2, "address");
            return (Criteria) this;
        }

        public Criteria andSitelogoIsNull() {
            addCriterion("sitelogo is null");
            return (Criteria) this;
        }

        public Criteria andSitelogoIsNotNull() {
            addCriterion("sitelogo is not null");
            return (Criteria) this;
        }

        public Criteria andSitelogoEqualTo(String value) {
            addCriterion("sitelogo =", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoNotEqualTo(String value) {
            addCriterion("sitelogo <>", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoGreaterThan(String value) {
            addCriterion("sitelogo >", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoGreaterThanOrEqualTo(String value) {
            addCriterion("sitelogo >=", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoLessThan(String value) {
            addCriterion("sitelogo <", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoLessThanOrEqualTo(String value) {
            addCriterion("sitelogo <=", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoLike(String value) {
            addCriterion("sitelogo like", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoNotLike(String value) {
            addCriterion("sitelogo not like", value, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoIn(List<String> values) {
            addCriterion("sitelogo in", values, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoNotIn(List<String> values) {
            addCriterion("sitelogo not in", values, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoBetween(String value1, String value2) {
            addCriterion("sitelogo between", value1, value2, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andSitelogoNotBetween(String value1, String value2) {
            addCriterion("sitelogo not between", value1, value2, "sitelogo");
            return (Criteria) this;
        }

        public Criteria andCompanyidIsNull() {
            addCriterion("companyid is null");
            return (Criteria) this;
        }

        public Criteria andCompanyidIsNotNull() {
            addCriterion("companyid is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyidEqualTo(Integer value) {
            addCriterion("companyid =", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotEqualTo(Integer value) {
            addCriterion("companyid <>", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThan(Integer value) {
            addCriterion("companyid >", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidGreaterThanOrEqualTo(Integer value) {
            addCriterion("companyid >=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThan(Integer value) {
            addCriterion("companyid <", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidLessThanOrEqualTo(Integer value) {
            addCriterion("companyid <=", value, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidIn(List<Integer> values) {
            addCriterion("companyid in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotIn(List<Integer> values) {
            addCriterion("companyid not in", values, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidBetween(Integer value1, Integer value2) {
            addCriterion("companyid between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andCompanyidNotBetween(Integer value1, Integer value2) {
            addCriterion("companyid not between", value1, value2, "companyid");
            return (Criteria) this;
        }

        public Criteria andSiteroleIsNull() {
            addCriterion("siterole is null");
            return (Criteria) this;
        }

        public Criteria andSiteroleIsNotNull() {
            addCriterion("siterole is not null");
            return (Criteria) this;
        }

        public Criteria andSiteroleEqualTo(Integer value) {
            addCriterion("siterole =", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleNotEqualTo(Integer value) {
            addCriterion("siterole <>", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleGreaterThan(Integer value) {
            addCriterion("siterole >", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleGreaterThanOrEqualTo(Integer value) {
            addCriterion("siterole >=", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleLessThan(Integer value) {
            addCriterion("siterole <", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleLessThanOrEqualTo(Integer value) {
            addCriterion("siterole <=", value, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleIn(List<Integer> values) {
            addCriterion("siterole in", values, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleNotIn(List<Integer> values) {
            addCriterion("siterole not in", values, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleBetween(Integer value1, Integer value2) {
            addCriterion("siterole between", value1, value2, "siterole");
            return (Criteria) this;
        }

        public Criteria andSiteroleNotBetween(Integer value1, Integer value2) {
            addCriterion("siterole not between", value1, value2, "siterole");
            return (Criteria) this;
        }

        public Criteria andLogoidIsNull() {
            addCriterion("logoid is null");
            return (Criteria) this;
        }

        public Criteria andLogoidIsNotNull() {
            addCriterion("logoid is not null");
            return (Criteria) this;
        }

        public Criteria andLogoidEqualTo(Integer value) {
            addCriterion("logoid =", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidNotEqualTo(Integer value) {
            addCriterion("logoid <>", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidGreaterThan(Integer value) {
            addCriterion("logoid >", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidGreaterThanOrEqualTo(Integer value) {
            addCriterion("logoid >=", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidLessThan(Integer value) {
            addCriterion("logoid <", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidLessThanOrEqualTo(Integer value) {
            addCriterion("logoid <=", value, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidIn(List<Integer> values) {
            addCriterion("logoid in", values, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidNotIn(List<Integer> values) {
            addCriterion("logoid not in", values, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidBetween(Integer value1, Integer value2) {
            addCriterion("logoid between", value1, value2, "logoid");
            return (Criteria) this;
        }

        public Criteria andLogoidNotBetween(Integer value1, Integer value2) {
            addCriterion("logoid not between", value1, value2, "logoid");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}