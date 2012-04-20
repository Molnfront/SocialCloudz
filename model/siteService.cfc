component extends="coldbox.system.orm.hibernate.VirtualEntityService" accessors="true" singleton{
	property name="DNSService" inject="entityService:scDNSMask";

	public siteService function init( eventHandling=true) {
		super.init(entityName="scSite", eventHandling=arguments.eventHandling);
		return this;
	}
	
	function getByHost(hostName){
		
		var restrictions = dnsService.getRestrictions();
		var criteria = [];
		ArrayAppend(criteria, Restrictions.eq("subdomain","www"));
		
		dns = dnsService.criteriaQuery([Restrictions.disjunction(criteria)]);
		
		site = this.get(id=dns.fk_siteID[1]);

		return site;
	}
}