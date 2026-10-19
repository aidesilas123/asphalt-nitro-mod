package com.google.firebase.iid;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
/* JADX INFO: loaded from: classes3.dex */
@Keep
@KeepForSdk
public final class Registrar implements ComponentRegistrar {

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: com.google.firebase:firebase-iid@@21.1.0 */
    static class FIIDInternalAdapter implements FirebaseInstanceIdInternal {
        final FirebaseInstanceId a;

        public FIIDInternalAdapter(FirebaseInstanceId firebaseInstanceId) {
            this.a = firebaseInstanceId;
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public Task<String> a() {
            String strM = this.a.m();
            return strM != null ? Tasks.forResult(strM) : this.a.i().continueWith(Registrar$FIIDInternalAdapter$$Lambda$0.a);
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public void b(FirebaseInstanceIdInternal.NewTokenListener newTokenListener) {
            this.a.a(newTokenListener);
        }

        @Override // com.google.firebase.iid.internal.FirebaseInstanceIdInternal
        public String getToken() {
            return this.a.m();
        }
    }

    static final /* synthetic */ FirebaseInstanceId lambda$getComponents$0$Registrar(ComponentContainer componentContainer) {
        return new FirebaseInstanceId((FirebaseApp) componentContainer.a(FirebaseApp.class), componentContainer.d(UserAgentPublisher.class), componentContainer.d(HeartBeatInfo.class), (FirebaseInstallationsApi) componentContainer.a(FirebaseInstallationsApi.class));
    }

    static final /* synthetic */ FirebaseInstanceIdInternal lambda$getComponents$1$Registrar(ComponentContainer componentContainer) {
        return new FIIDInternalAdapter((FirebaseInstanceId) componentContainer.a(FirebaseInstanceId.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseInstanceId.class).b(Dependency.required(FirebaseApp.class)).b(Dependency.optionalProvider(UserAgentPublisher.class)).b(Dependency.optionalProvider(HeartBeatInfo.class)).b(Dependency.required(FirebaseInstallationsApi.class)).f(Registrar$$Lambda$0.a).c().d(), Component.builder(FirebaseInstanceIdInternal.class).b(Dependency.required(FirebaseInstanceId.class)).f(Registrar$$Lambda$1.a).d(), LibraryVersionComponent.create("fire-iid", "21.1.0"));
    }
}
