package dagger.android;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerFragment_MembersInjector implements d.b<c> {
    private final e.a.a<d<Object>> a;

    public DaggerFragment_MembersInjector(e.a.a<d<Object>> aVar) {
        this.a = aVar;
    }

    public static d.b<c> create(e.a.a<d<Object>> aVar) {
        return new DaggerFragment_MembersInjector(aVar);
    }

    public static void injectAndroidInjector(c cVar, d<Object> dVar) {
        cVar.a = dVar;
    }
}
