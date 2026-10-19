package kotlin.reflect.jvm.internal.impl.descriptors;

import java.util.Collection;

/* JADX INFO: loaded from: classes5.dex */
public interface CallableMemberDescriptor extends a, q {

    public enum Kind {
        DECLARATION,
        FAKE_OVERRIDE,
        DELEGATION,
        SYNTHESIZED;

        public boolean e() {
            return this != FAKE_OVERRIDE;
        }
    }

    CallableMemberDescriptor A0(i iVar, Modality modality, m0 m0Var, Kind kind, boolean z);

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.i
    CallableMemberDescriptor a();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    Collection<? extends CallableMemberDescriptor> d();

    Kind getKind();

    void x0(Collection<? extends CallableMemberDescriptor> collection);
}
