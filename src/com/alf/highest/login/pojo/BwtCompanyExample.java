package com.alf.highest.login.pojo;

import java.util.ArrayList;
import java.util.List;

public class BwtCompanyExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public BwtCompanyExample() {
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

        public Criteria andCompanynameIsNull() {
            addCriterion("companyname is null");
            return (Criteria) this;
        }

        public Criteria andCompanynameIsNotNull() {
            addCriterion("companyname is not null");
            return (Criteria) this;
        }

        public Criteria andCompanynameEqualTo(String value) {
            addCriterion("companyname =", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotEqualTo(String value) {
            addCriterion("companyname <>", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThan(String value) {
            addCriterion("companyname >", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameGreaterThanOrEqualTo(String value) {
            addCriterion("companyname >=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThan(String value) {
            addCriterion("companyname <", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLessThanOrEqualTo(String value) {
            addCriterion("companyname <=", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameLike(String value) {
            addCriterion("companyname like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotLike(String value) {
            addCriterion("companyname not like", value, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameIn(List<String> values) {
            addCriterion("companyname in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotIn(List<String> values) {
            addCriterion("companyname not in", values, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameBetween(String value1, String value2) {
            addCriterion("companyname between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andCompanynameNotBetween(String value1, String value2) {
            addCriterion("companyname not between", value1, value2, "companyname");
            return (Criteria) this;
        }

        public Criteria andAbbreviationIsNull() {
            addCriterion("abbreviation is null");
            return (Criteria) this;
        }

        public Criteria andAbbreviationIsNotNull() {
            addCriterion("abbreviation is not null");
            return (Criteria) this;
        }

        public Criteria andAbbreviationEqualTo(String value) {
            addCriterion("abbreviation =", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationNotEqualTo(String value) {
            addCriterion("abbreviation <>", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationGreaterThan(String value) {
            addCriterion("abbreviation >", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationGreaterThanOrEqualTo(String value) {
            addCriterion("abbreviation >=", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationLessThan(String value) {
            addCriterion("abbreviation <", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationLessThanOrEqualTo(String value) {
            addCriterion("abbreviation <=", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationLike(String value) {
            addCriterion("abbreviation like", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationNotLike(String value) {
            addCriterion("abbreviation not like", value, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationIn(List<String> values) {
            addCriterion("abbreviation in", values, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationNotIn(List<String> values) {
            addCriterion("abbreviation not in", values, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationBetween(String value1, String value2) {
            addCriterion("abbreviation between", value1, value2, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andAbbreviationNotBetween(String value1, String value2) {
            addCriterion("abbreviation not between", value1, value2, "abbreviation");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountIsNull() {
            addCriterion("companyaccount is null");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountIsNotNull() {
            addCriterion("companyaccount is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountEqualTo(String value) {
            addCriterion("companyaccount =", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountNotEqualTo(String value) {
            addCriterion("companyaccount <>", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountGreaterThan(String value) {
            addCriterion("companyaccount >", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountGreaterThanOrEqualTo(String value) {
            addCriterion("companyaccount >=", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountLessThan(String value) {
            addCriterion("companyaccount <", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountLessThanOrEqualTo(String value) {
            addCriterion("companyaccount <=", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountLike(String value) {
            addCriterion("companyaccount like", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountNotLike(String value) {
            addCriterion("companyaccount not like", value, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountIn(List<String> values) {
            addCriterion("companyaccount in", values, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountNotIn(List<String> values) {
            addCriterion("companyaccount not in", values, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountBetween(String value1, String value2) {
            addCriterion("companyaccount between", value1, value2, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanyaccountNotBetween(String value1, String value2) {
            addCriterion("companyaccount not between", value1, value2, "companyaccount");
            return (Criteria) this;
        }

        public Criteria andCompanypwdIsNull() {
            addCriterion("companypwd is null");
            return (Criteria) this;
        }

        public Criteria andCompanypwdIsNotNull() {
            addCriterion("companypwd is not null");
            return (Criteria) this;
        }

        public Criteria andCompanypwdEqualTo(String value) {
            addCriterion("companypwd =", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdNotEqualTo(String value) {
            addCriterion("companypwd <>", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdGreaterThan(String value) {
            addCriterion("companypwd >", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdGreaterThanOrEqualTo(String value) {
            addCriterion("companypwd >=", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdLessThan(String value) {
            addCriterion("companypwd <", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdLessThanOrEqualTo(String value) {
            addCriterion("companypwd <=", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdLike(String value) {
            addCriterion("companypwd like", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdNotLike(String value) {
            addCriterion("companypwd not like", value, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdIn(List<String> values) {
            addCriterion("companypwd in", values, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdNotIn(List<String> values) {
            addCriterion("companypwd not in", values, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdBetween(String value1, String value2) {
            addCriterion("companypwd between", value1, value2, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanypwdNotBetween(String value1, String value2) {
            addCriterion("companypwd not between", value1, value2, "companypwd");
            return (Criteria) this;
        }

        public Criteria andCompanyroleIsNull() {
            addCriterion("companyrole is null");
            return (Criteria) this;
        }

        public Criteria andCompanyroleIsNotNull() {
            addCriterion("companyrole is not null");
            return (Criteria) this;
        }

        public Criteria andCompanyroleEqualTo(Integer value) {
            addCriterion("companyrole =", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleNotEqualTo(Integer value) {
            addCriterion("companyrole <>", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleGreaterThan(Integer value) {
            addCriterion("companyrole >", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleGreaterThanOrEqualTo(Integer value) {
            addCriterion("companyrole >=", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleLessThan(Integer value) {
            addCriterion("companyrole <", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleLessThanOrEqualTo(Integer value) {
            addCriterion("companyrole <=", value, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleIn(List<Integer> values) {
            addCriterion("companyrole in", values, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleNotIn(List<Integer> values) {
            addCriterion("companyrole not in", values, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleBetween(Integer value1, Integer value2) {
            addCriterion("companyrole between", value1, value2, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanyroleNotBetween(Integer value1, Integer value2) {
            addCriterion("companyrole not between", value1, value2, "companyrole");
            return (Criteria) this;
        }

        public Criteria andCompanylogoIsNull() {
            addCriterion("companylogo is null");
            return (Criteria) this;
        }

        public Criteria andCompanylogoIsNotNull() {
            addCriterion("companylogo is not null");
            return (Criteria) this;
        }

        public Criteria andCompanylogoEqualTo(String value) {
            addCriterion("companylogo =", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoNotEqualTo(String value) {
            addCriterion("companylogo <>", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoGreaterThan(String value) {
            addCriterion("companylogo >", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoGreaterThanOrEqualTo(String value) {
            addCriterion("companylogo >=", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoLessThan(String value) {
            addCriterion("companylogo <", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoLessThanOrEqualTo(String value) {
            addCriterion("companylogo <=", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoLike(String value) {
            addCriterion("companylogo like", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoNotLike(String value) {
            addCriterion("companylogo not like", value, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoIn(List<String> values) {
            addCriterion("companylogo in", values, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoNotIn(List<String> values) {
            addCriterion("companylogo not in", values, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoBetween(String value1, String value2) {
            addCriterion("companylogo between", value1, value2, "companylogo");
            return (Criteria) this;
        }

        public Criteria andCompanylogoNotBetween(String value1, String value2) {
            addCriterion("companylogo not between", value1, value2, "companylogo");
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