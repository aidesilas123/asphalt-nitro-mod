package dagger.internal;

/* JADX INFO: loaded from: classes4.dex */
public final class MembersInjectors {

    private enum NoOpMembersInjector implements d.b<Object> {
        INSTANCE
    }

    private MembersInjectors() {
    }

    public static <T> d.b<T> noOp() {
        return NoOpMembersInjector.INSTANCE;
    }
}
