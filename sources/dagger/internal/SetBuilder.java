package dagger.internal;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class SetBuilder<T> {
    private final List<T> a;

    private SetBuilder(int i) {
        this.a = new ArrayList(i);
    }

    public static <T> SetBuilder<T> newSetBuilder(int i) {
        return new SetBuilder<>(i);
    }
}
