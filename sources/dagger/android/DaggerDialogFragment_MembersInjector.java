package dagger.android;

/* JADX INFO: loaded from: classes4.dex */
public final class DaggerDialogFragment_MembersInjector implements d.b<b> {
    private final e.a.a<d<Object>> a;

    public DaggerDialogFragment_MembersInjector(e.a.a<d<Object>> aVar) {
        this.a = aVar;
    }

    public static d.b<b> create(e.a.a<d<Object>> aVar) {
        return new DaggerDialogFragment_MembersInjector(aVar);
    }

    public static void injectAndroidInjector(b bVar, d<Object> dVar) {
        bVar.a = dVar;
    }
}
