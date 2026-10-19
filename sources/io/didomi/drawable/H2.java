package io.didomi.drawable;

import android.content.SharedPreferences;
import d.b;

/* JADX INFO: loaded from: classes5.dex */
public final class H2 implements b<Didomi> {
    public static void a(Didomi didomi, SharedPreferences sharedPreferences) {
        didomi.sharedPreferences = sharedPreferences;
    }

    public static void a(Didomi didomi, D8 d8) {
        didomi.uiProvider = d8;
    }

    public static void a(Didomi didomi, UIStateRepository uIStateRepository) {
        didomi.uiStateRepository = uIStateRepository;
    }

    public static void a(Didomi didomi, G8 g8) {
        didomi.userChoicesInfoProvider = g8;
    }

    public static void a(Didomi didomi, H h) {
        didomi.configurationRepository = h;
    }

    public static void a(Didomi didomi, I3 i3) {
        didomi.navigationManager = i3;
    }

    public static void a(Didomi didomi, J j) {
        didomi.connectivityHelper = j;
    }

    public static void a(Didomi didomi, M8 m8) {
        didomi.userRepository = m8;
    }

    public static void a(Didomi didomi, P8 p8) {
        didomi.userStatusRepository = p8;
    }

    public static void a(Didomi didomi, V8 v8) {
        didomi.vendorRepository = v8;
    }

    public static void a(Didomi didomi, V v) {
        didomi.consentRepository = v;
    }

    public static void a(Didomi didomi, Z2 z2) {
        didomi.httpRequestHelper = z2;
    }

    public static void a(Didomi didomi, Z4 z4) {
        didomi.purposesTranslationsRepository = z4;
    }

    public static void a(Didomi didomi, Z z) {
        didomi.contextHelper = z;
    }

    public static void a(Didomi didomi, io.didomi.drawable.apiEvents.b bVar) {
        didomi.apiEventsRepository = bVar;
    }

    public static void a(Didomi didomi, C1733c6 c1733c6) {
        didomi.syncRepository = c1733c6;
    }

    public static void a(Didomi didomi, InterfaceC1780h3 interfaceC1780h3) {
        didomi.iabStorageRepository = interfaceC1780h3;
    }

    public static void a(Didomi didomi, C1822l5 c1822l5) {
        didomi.remoteFilesHelper = c1822l5;
    }

    public static void a(Didomi didomi, C1892s5 c1892s5) {
        didomi.resourcesHelper = c1892s5;
    }

    public static void a(Didomi didomi, C1920v3 c1920v3) {
        didomi.languagesHelper = c1920v3;
    }

    public abstract /* synthetic */ void injectMembers(T t);
}
