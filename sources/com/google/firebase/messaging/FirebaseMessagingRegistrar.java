package com.google.firebase.messaging;

import androidx.annotation.Keep;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.firebase.FirebaseApp;
import com.google.firebase.components.Component;
import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.Dependency;
import com.google.firebase.events.Subscriber;
import com.google.firebase.heartbeatinfo.HeartBeatInfo;
import com.google.firebase.iid.internal.FirebaseInstanceIdInternal;
import com.google.firebase.installations.FirebaseInstallationsApi;
import com.google.firebase.platforminfo.LibraryVersionComponent;
import com.google.firebase.platforminfo.UserAgentPublisher;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
@Keep
@KeepForSdk
public class FirebaseMessagingRegistrar implements ComponentRegistrar {
    static /* synthetic */ FirebaseMessaging lambda$getComponents$0(ComponentContainer componentContainer) {
        return new FirebaseMessaging((FirebaseApp) componentContainer.a(FirebaseApp.class), (FirebaseInstanceIdInternal) componentContainer.a(FirebaseInstanceIdInternal.class), componentContainer.d(UserAgentPublisher.class), componentContainer.d(HeartBeatInfo.class), (FirebaseInstallationsApi) componentContainer.a(FirebaseInstallationsApi.class), (com.google.android.datatransport.d) componentContainer.a(com.google.android.datatransport.d.class), (Subscriber) componentContainer.a(Subscriber.class));
    }

    @Override // com.google.firebase.components.ComponentRegistrar
    @Keep
    public List<Component<?>> getComponents() {
        return Arrays.asList(Component.builder(FirebaseMessaging.class).b(Dependency.required(FirebaseApp.class)).b(Dependency.optional(FirebaseInstanceIdInternal.class)).b(Dependency.optionalProvider(UserAgentPublisher.class)).b(Dependency.optionalProvider(HeartBeatInfo.class)).b(Dependency.optional(com.google.android.datatransport.d.class)).b(Dependency.required(FirebaseInstallationsApi.class)).b(Dependency.required(Subscriber.class)).f(new ComponentFactory() { // from class: com.google.firebase.messaging.p
            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                return FirebaseMessagingRegistrar.lambda$getComponents$0(componentContainer);
            }
        }).c().d(), LibraryVersionComponent.create("fire-fcm", "23.0.2"));
    }
}
