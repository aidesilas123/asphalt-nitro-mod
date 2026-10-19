package dagger.android;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerActivity_MembersInjector implements d.b<DaggerActivity> {
    private final e.a.a<d<Object>> a;

    public DaggerActivity_MembersInjector(e.a.a<d<Object>> aVar) {
        this.a = aVar;
    }

    public static d.b<DaggerActivity> create(e.a.a<d<Object>> aVar) {
        return new DaggerActivity_MembersInjector(aVar);
    }

    public static void injectAndroidInjector(DaggerActivity daggerActivity, d<Object> dVar) {
        daggerActivity.a = dVar;
    }
}
