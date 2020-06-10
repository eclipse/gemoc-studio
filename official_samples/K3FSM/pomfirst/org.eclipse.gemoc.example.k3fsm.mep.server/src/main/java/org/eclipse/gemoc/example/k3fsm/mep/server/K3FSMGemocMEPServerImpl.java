package org.eclipse.gemoc.example.k3fsm.mep.server;

import org.eclipse.emf.ecore.resource.ResourceSet;
import org.eclipse.gemoc.example.k3fsm.K3FSMStandaloneSetup;
import org.eclipse.gemoc.example.k3fsm.K3fsmPackage;
import org.eclipse.gemoc.execution.sequential.javaengine.headless.HeadlessPlainK3ExecutionEngineMEP;
import org.eclipse.gemoc.executionframework.mep.launch.GemocMEPServerImpl;
import org.eclipse.xtext.resource.XtextResource;
import org.eclipse.xtext.resource.XtextResourceSet;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.inject.Injector;

public class K3FSMGemocMEPServerImpl extends GemocMEPServerImpl {

	private static final Logger LOGGER = LoggerFactory.getLogger(K3FSMGemocMEPServerImpl.class);
		
	public K3FSMGemocMEPServerImpl() {
		super(new HeadlessPlainK3ExecutionEngineMEP<K3FSMLanguageDefinitionExtension>(new K3FSMLanguageDefinitionExtension()));
	}
	
	/**
	 * use K3FSM xtext resourceSet
	 * TODO see if the Sirius modelLoader allows to generalize/avoid that
	 */
	@Override
	public ResourceSet createResourceSet() {
		
		K3fsmPackage.eINSTANCE.eClass();
		
		new org.eclipse.emf.mwe.utils.StandaloneSetup().setPlatformUri("../");
		Injector injector = new K3FSMStandaloneSetup().createInjectorAndDoEMFRegistration();
		XtextResourceSet resourceSet = injector.getInstance(XtextResourceSet.class);
		resourceSet.addLoadOption(XtextResource.OPTION_RESOLVE_ALL, Boolean.TRUE);
		LOGGER.info("created K3FSM XtextResourceSet");
		return resourceSet;
	}
	
}
