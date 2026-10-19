package dagger.android;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerApplication_MembersInjector implements d.b<DaggerApplication> {
    private final e.a.a<d<Object>> a;

    public DaggerApplication_MembersInjector(e.a.a<d<Object>> aVar) {
        this.a = aVar;
    }

    public static d.b<DaggerApplication> create(e.a.a<d<Object>> aVar) {
        return new DaggerApplication_MembersInjector(aVar);
    }

    public static void injectAndroidInjector(DaggerApplication daggerApplication, d<Object> dVar) {
        daggerApplication.a = dVar;
    }
}
