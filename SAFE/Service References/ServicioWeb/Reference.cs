﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SAFE.ServicioWeb {
    using System.Runtime.Serialization;
    using System;
    
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0")]
    [System.Runtime.Serialization.DataContractAttribute(Name="CompositeType", Namespace="http://schemas.datacontract.org/2004/07/BackSafe.Servicio")]
    [System.SerializableAttribute()]
    public partial class CompositeType : object, System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged {
        
        [System.NonSerializedAttribute()]
        private System.Runtime.Serialization.ExtensionDataObject extensionDataField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private bool BoolValueField;
        
        [System.Runtime.Serialization.OptionalFieldAttribute()]
        private string StringValueField;
        
        [global::System.ComponentModel.BrowsableAttribute(false)]
        public System.Runtime.Serialization.ExtensionDataObject ExtensionData {
            get {
                return this.extensionDataField;
            }
            set {
                this.extensionDataField = value;
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public bool BoolValue {
            get {
                return this.BoolValueField;
            }
            set {
                if ((this.BoolValueField.Equals(value) != true)) {
                    this.BoolValueField = value;
                    this.RaisePropertyChanged("BoolValue");
                }
            }
        }
        
        [System.Runtime.Serialization.DataMemberAttribute()]
        public string StringValue {
            get {
                return this.StringValueField;
            }
            set {
                if ((object.ReferenceEquals(this.StringValueField, value) != true)) {
                    this.StringValueField = value;
                    this.RaisePropertyChanged("StringValue");
                }
            }
        }
        
        public event System.ComponentModel.PropertyChangedEventHandler PropertyChanged;
        
        protected void RaisePropertyChanged(string propertyName) {
            System.ComponentModel.PropertyChangedEventHandler propertyChanged = this.PropertyChanged;
            if ((propertyChanged != null)) {
                propertyChanged(this, new System.ComponentModel.PropertyChangedEventArgs(propertyName));
            }
        }
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    [System.ServiceModel.ServiceContractAttribute(ConfigurationName="ServicioWeb.IServicioPaginaWeb")]
    public interface IServicioPaginaWeb {
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/GetData", ReplyAction="http://tempuri.org/IServicioPaginaWeb/GetDataResponse")]
        string GetData(int value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/GetData", ReplyAction="http://tempuri.org/IServicioPaginaWeb/GetDataResponse")]
        System.Threading.Tasks.Task<string> GetDataAsync(int value);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/GetDataUsingDataContract", ReplyAction="http://tempuri.org/IServicioPaginaWeb/GetDataUsingDataContractResponse")]
        SAFE.ServicioWeb.CompositeType GetDataUsingDataContract(SAFE.ServicioWeb.CompositeType composite);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/GetDataUsingDataContract", ReplyAction="http://tempuri.org/IServicioPaginaWeb/GetDataUsingDataContractResponse")]
        System.Threading.Tasks.Task<SAFE.ServicioWeb.CompositeType> GetDataUsingDataContractAsync(SAFE.ServicioWeb.CompositeType composite);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearVisitaMedica", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearVisitaMedicaResponse")]
        bool crearVisitaMedica(string fecVisita, decimal idEmpresa, decimal idMedico);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearVisitaMedica", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearVisitaMedicaResponse")]
        System.Threading.Tasks.Task<bool> crearVisitaMedicaAsync(string fecVisita, decimal idEmpresa, decimal idMedico);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/login", ReplyAction="http://tempuri.org/IServicioPaginaWeb/loginResponse")]
        System.Data.DataSet login(string rut, string contraseña);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/login", ReplyAction="http://tempuri.org/IServicioPaginaWeb/loginResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> loginAsync(string rut, string contraseña);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerContratos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerContratosResponse")]
        System.Data.DataSet obtenerContratos();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerContratos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerContratosResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> obtenerContratosAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerCursos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerCursosResponse")]
        System.Data.DataSet obtenerCursos();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerCursos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerCursosResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> obtenerCursosAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerExamanes", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerExamanesResponse")]
        System.Data.DataSet obtenerExamanes(decimal idAtencion);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerExamanes", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerExamanesResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> obtenerExamanesAsync(decimal idAtencion);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorId", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorIdResponse")]
        System.Data.DataSet obtenerVisitaPorId(decimal idMedico);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorId", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorIdResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> obtenerVisitaPorIdAsync(decimal idMedico);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorFecha", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorFechaResponse")]
        System.Data.DataSet obtenerVisitaPorFecha(System.DateTime fecha);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorFecha", ReplyAction="http://tempuri.org/IServicioPaginaWeb/obtenerVisitaPorFechaResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> obtenerVisitaPorFechaAsync(System.DateTime fecha);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearPlanCapacitacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearPlanCapacitacionResponse")]
        bool crearPlanCapacitacion(string descripcion, int idEmpresa, string fechaPlan);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearPlanCapacitacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearPlanCapacitacionResponse")]
        System.Threading.Tasks.Task<bool> crearPlanCapacitacionAsync(string descripcion, int idEmpresa, string fechaPlan);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearCapacitacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearCapacitacionResponse")]
        bool crearCapacitacion(string descCapacitacion, decimal minParticipantes, string nomExpositor, string fecInicial, string fecFinal, int idPlanCapac);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearCapacitacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearCapacitacionResponse")]
        System.Threading.Tasks.Task<bool> crearCapacitacionAsync(string descCapacitacion, decimal minParticipantes, string nomExpositor, string fecInicial, string fecFinal, int idPlanCapac);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearEvaluacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearEvaluacionResponse")]
        bool crearEvaluacion(string fecEval, string descEval, decimal tipoEvalId, decimal empresaId, decimal usuarioId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearEvaluacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearEvaluacionResponse")]
        System.Threading.Tasks.Task<bool> crearEvaluacionAsync(string fecEval, string descEval, decimal tipoEvalId, decimal empresaId, decimal usuarioId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarTipoEvaluacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarTipoEvaluacionResponse")]
        System.Data.DataSet retornarTipoEvaluacion();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarTipoEvaluacion", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarTipoEvaluacionResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarTipoEvaluacionAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarMedicos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarMedicosResponse")]
        System.Data.DataSet retornarMedicos();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarMedicos", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarMedicosResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarMedicosAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEmpresas", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEmpresasResponse")]
        System.Data.DataSet retornarEmpresas();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEmpresas", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEmpresasResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarEmpresasAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorTecnico", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorTecnicoResponse")]
        System.Data.DataSet retornarEvaluacionesPorTecnico();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorTecnico", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorTecnicoResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarEvaluacionesPorTecnicoAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorIngeniero", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorIngenieroResponse")]
        System.Data.DataSet retornarEvaluacionesPorIngeniero();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorIngeniero", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarEvaluacionesPorIngenieroResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarEvaluacionesPorIngenieroAsync();
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearInformeIngeniero", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearInformeIngenieroResponse")]
        bool crearInformeIngeniero(string recomendacion, decimal usuarioId, decimal evalId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/crearInformeIngeniero", ReplyAction="http://tempuri.org/IServicioPaginaWeb/crearInformeIngenieroResponse")]
        System.Threading.Tasks.Task<bool> crearInformeIngenieroAsync(string recomendacion, decimal usuarioId, decimal evalId);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarInformes", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarInformesResponse")]
        System.Data.DataSet retornarInformes(decimal idEmpresa);
        
        [System.ServiceModel.OperationContractAttribute(Action="http://tempuri.org/IServicioPaginaWeb/retornarInformes", ReplyAction="http://tempuri.org/IServicioPaginaWeb/retornarInformesResponse")]
        System.Threading.Tasks.Task<System.Data.DataSet> retornarInformesAsync(decimal idEmpresa);
    }
    
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public interface IServicioPaginaWebChannel : SAFE.ServicioWeb.IServicioPaginaWeb, System.ServiceModel.IClientChannel {
    }
    
    [System.Diagnostics.DebuggerStepThroughAttribute()]
    [System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")]
    public partial class ServicioPaginaWebClient : System.ServiceModel.ClientBase<SAFE.ServicioWeb.IServicioPaginaWeb>, SAFE.ServicioWeb.IServicioPaginaWeb {
        
        public ServicioPaginaWebClient() {
        }
        
        public ServicioPaginaWebClient(string endpointConfigurationName) : 
                base(endpointConfigurationName) {
        }
        
        public ServicioPaginaWebClient(string endpointConfigurationName, string remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioPaginaWebClient(string endpointConfigurationName, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(endpointConfigurationName, remoteAddress) {
        }
        
        public ServicioPaginaWebClient(System.ServiceModel.Channels.Binding binding, System.ServiceModel.EndpointAddress remoteAddress) : 
                base(binding, remoteAddress) {
        }
        
        public string GetData(int value) {
            return base.Channel.GetData(value);
        }
        
        public System.Threading.Tasks.Task<string> GetDataAsync(int value) {
            return base.Channel.GetDataAsync(value);
        }
        
        public SAFE.ServicioWeb.CompositeType GetDataUsingDataContract(SAFE.ServicioWeb.CompositeType composite) {
            return base.Channel.GetDataUsingDataContract(composite);
        }
        
        public System.Threading.Tasks.Task<SAFE.ServicioWeb.CompositeType> GetDataUsingDataContractAsync(SAFE.ServicioWeb.CompositeType composite) {
            return base.Channel.GetDataUsingDataContractAsync(composite);
        }
        
        public bool crearVisitaMedica(string fecVisita, decimal idEmpresa, decimal idMedico) {
            return base.Channel.crearVisitaMedica(fecVisita, idEmpresa, idMedico);
        }
        
        public System.Threading.Tasks.Task<bool> crearVisitaMedicaAsync(string fecVisita, decimal idEmpresa, decimal idMedico) {
            return base.Channel.crearVisitaMedicaAsync(fecVisita, idEmpresa, idMedico);
        }
        
        public System.Data.DataSet login(string rut, string contraseña) {
            return base.Channel.login(rut, contraseña);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> loginAsync(string rut, string contraseña) {
            return base.Channel.loginAsync(rut, contraseña);
        }
        
        public System.Data.DataSet obtenerContratos() {
            return base.Channel.obtenerContratos();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> obtenerContratosAsync() {
            return base.Channel.obtenerContratosAsync();
        }
        
        public System.Data.DataSet obtenerCursos() {
            return base.Channel.obtenerCursos();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> obtenerCursosAsync() {
            return base.Channel.obtenerCursosAsync();
        }
        
        public System.Data.DataSet obtenerExamanes(decimal idAtencion) {
            return base.Channel.obtenerExamanes(idAtencion);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> obtenerExamanesAsync(decimal idAtencion) {
            return base.Channel.obtenerExamanesAsync(idAtencion);
        }
        
        public System.Data.DataSet obtenerVisitaPorId(decimal idMedico) {
            return base.Channel.obtenerVisitaPorId(idMedico);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> obtenerVisitaPorIdAsync(decimal idMedico) {
            return base.Channel.obtenerVisitaPorIdAsync(idMedico);
        }
        
        public System.Data.DataSet obtenerVisitaPorFecha(System.DateTime fecha) {
            return base.Channel.obtenerVisitaPorFecha(fecha);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> obtenerVisitaPorFechaAsync(System.DateTime fecha) {
            return base.Channel.obtenerVisitaPorFechaAsync(fecha);
        }
        
        public bool crearPlanCapacitacion(string descripcion, int idEmpresa, string fechaPlan) {
            return base.Channel.crearPlanCapacitacion(descripcion, idEmpresa, fechaPlan);
        }
        
        public System.Threading.Tasks.Task<bool> crearPlanCapacitacionAsync(string descripcion, int idEmpresa, string fechaPlan) {
            return base.Channel.crearPlanCapacitacionAsync(descripcion, idEmpresa, fechaPlan);
        }
        
        public bool crearCapacitacion(string descCapacitacion, decimal minParticipantes, string nomExpositor, string fecInicial, string fecFinal, int idPlanCapac) {
            return base.Channel.crearCapacitacion(descCapacitacion, minParticipantes, nomExpositor, fecInicial, fecFinal, idPlanCapac);
        }
        
        public System.Threading.Tasks.Task<bool> crearCapacitacionAsync(string descCapacitacion, decimal minParticipantes, string nomExpositor, string fecInicial, string fecFinal, int idPlanCapac) {
            return base.Channel.crearCapacitacionAsync(descCapacitacion, minParticipantes, nomExpositor, fecInicial, fecFinal, idPlanCapac);
        }
        
        public bool crearEvaluacion(string fecEval, string descEval, decimal tipoEvalId, decimal empresaId, decimal usuarioId) {
            return base.Channel.crearEvaluacion(fecEval, descEval, tipoEvalId, empresaId, usuarioId);
        }
        
        public System.Threading.Tasks.Task<bool> crearEvaluacionAsync(string fecEval, string descEval, decimal tipoEvalId, decimal empresaId, decimal usuarioId) {
            return base.Channel.crearEvaluacionAsync(fecEval, descEval, tipoEvalId, empresaId, usuarioId);
        }
        
        public System.Data.DataSet retornarTipoEvaluacion() {
            return base.Channel.retornarTipoEvaluacion();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarTipoEvaluacionAsync() {
            return base.Channel.retornarTipoEvaluacionAsync();
        }
        
        public System.Data.DataSet retornarMedicos() {
            return base.Channel.retornarMedicos();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarMedicosAsync() {
            return base.Channel.retornarMedicosAsync();
        }
        
        public System.Data.DataSet retornarEmpresas() {
            return base.Channel.retornarEmpresas();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarEmpresasAsync() {
            return base.Channel.retornarEmpresasAsync();
        }
        
        public System.Data.DataSet retornarEvaluacionesPorTecnico() {
            return base.Channel.retornarEvaluacionesPorTecnico();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarEvaluacionesPorTecnicoAsync() {
            return base.Channel.retornarEvaluacionesPorTecnicoAsync();
        }
        
        public System.Data.DataSet retornarEvaluacionesPorIngeniero() {
            return base.Channel.retornarEvaluacionesPorIngeniero();
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarEvaluacionesPorIngenieroAsync() {
            return base.Channel.retornarEvaluacionesPorIngenieroAsync();
        }
        
        public bool crearInformeIngeniero(string recomendacion, decimal usuarioId, decimal evalId) {
            return base.Channel.crearInformeIngeniero(recomendacion, usuarioId, evalId);
        }
        
        public System.Threading.Tasks.Task<bool> crearInformeIngenieroAsync(string recomendacion, decimal usuarioId, decimal evalId) {
            return base.Channel.crearInformeIngenieroAsync(recomendacion, usuarioId, evalId);
        }
        
        public System.Data.DataSet retornarInformes(decimal idEmpresa) {
            return base.Channel.retornarInformes(idEmpresa);
        }
        
        public System.Threading.Tasks.Task<System.Data.DataSet> retornarInformesAsync(decimal idEmpresa) {
            return base.Channel.retornarInformesAsync(idEmpresa);
        }
    }
}
