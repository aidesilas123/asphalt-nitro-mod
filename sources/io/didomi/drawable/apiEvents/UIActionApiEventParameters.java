package io.didomi.drawable.apiEvents;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import io.didomi.drawable.InterfaceC1786i;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0087\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\b\u001a\u00020\u00002\b\b\u0002\u0010\u0003\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\n\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\n\u0010\u0007J\u0010\u0010\f\u001a\u00020\u000bHÖ\u0001¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0003\u001a\u00020\u00028\u0006X\u0087\u0004¢\u0006\f\n\u0004\b\u0003\u0010\u0013\u001a\u0004\b\u0014\u0010\u0007¨\u0006\u0015"}, d2 = {"Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;", "Lio/didomi/sdk/i;", "", "action", "<init>", "(Ljava/lang/String;)V", "component1", "()Ljava/lang/String;", "copy", "(Ljava/lang/String;)Lio/didomi/sdk/apiEvents/UIActionApiEventParameters;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getAction", "android_release"}, mv = {1, 8, 0})
public final /* data */ class UIActionApiEventParameters implements InterfaceC1786i {

    @c("action")
    private final String action;

    public UIActionApiEventParameters(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        this.action = action;
    }

    public static /* synthetic */ UIActionApiEventParameters copy$default(UIActionApiEventParameters uIActionApiEventParameters, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = uIActionApiEventParameters.action;
        }
        return uIActionApiEventParameters.copy(str);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getAction() {
        return this.action;
    }

    public final UIActionApiEventParameters copy(String action) {
        Intrinsics.checkNotNullParameter(action, "action");
        return new UIActionApiEventParameters(action);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        return (other instanceof UIActionApiEventParameters) && Intrinsics.areEqual(this.action, ((UIActionApiEventParameters) other).action);
    }

    public final String getAction() {
        return this.action;
    }

    public int hashCode() {
        return this.action.hashCode();
    }

    public String toString() {
        return "UIActionApiEventParameters(action=" + this.action + ')';
    }
}
