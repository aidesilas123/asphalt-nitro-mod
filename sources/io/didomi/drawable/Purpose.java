package io.didomi.drawable;

import androidx.annotation.Keep;
import com.google.gson.r.c;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.n;

/* JADX INFO: loaded from: classes5.dex */
@Keep
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0087\b\u0018\u00002\u00020\u0001B#\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\t\u0010\u000f\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J'\u0010\u0012\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0007\u001a\u00020\u00038FX\u0087\u0004¢\u0006\f\u0012\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000b¨\u0006\u0019"}, d2 = {"Lio/didomi/sdk/Purpose;", "", "id", "", "name", "descriptionText", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "description", "getDescription$annotations", "()V", "getDescription", "()Ljava/lang/String;", "getDescriptionText", "getId", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "android_release"}, mv = {1, 8, 0}, xi = 48)
public final /* data */ class Purpose {

    @c("description")
    private final String descriptionText;

    @c("id")
    private final String id;

    @c("name")
    private final String name;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Purpose(String id) {
        this(id, null, null, 6, null);
        Intrinsics.checkNotNullParameter(id, "id");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Purpose(String id, String name) {
        this(id, name, null, 4, null);
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
    }

    public Purpose(String id, String name, String descriptionText) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(descriptionText, "descriptionText");
        this.id = id;
        this.name = name;
        this.descriptionText = descriptionText;
    }

    public /* synthetic */ Purpose(String str, String str2, String str3, int i, n nVar) {
        this(str, (i & 2) != 0 ? "" : str2, (i & 4) != 0 ? "" : str3);
    }

    public static /* synthetic */ Purpose copy$default(Purpose purpose, String str, String str2, String str3, int i, Object obj) {
        if ((i & 1) != 0) {
            str = purpose.id;
        }
        if ((i & 2) != 0) {
            str2 = purpose.name;
        }
        if ((i & 4) != 0) {
            str3 = purpose.descriptionText;
        }
        return purpose.copy(str, str2, str3);
    }

    public static /* synthetic */ void getDescription$annotations() {
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescriptionText() {
        return this.descriptionText;
    }

    public final Purpose copy(String id, String name, String descriptionText) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(descriptionText, "descriptionText");
        return new Purpose(id, name, descriptionText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Purpose)) {
            return false;
        }
        Purpose purpose = (Purpose) other;
        return Intrinsics.areEqual(this.id, purpose.id) && Intrinsics.areEqual(this.name, purpose.name) && Intrinsics.areEqual(this.descriptionText, purpose.descriptionText);
    }

    public final String getDescription() {
        return this.descriptionText;
    }

    public final String getDescriptionText() {
        return this.descriptionText;
    }

    public final String getId() {
        return this.id;
    }

    public final String getName() {
        return this.name;
    }

    public int hashCode() {
        return (((this.id.hashCode() * 31) + this.name.hashCode()) * 31) + this.descriptionText.hashCode();
    }

    public String toString() {
        return "Purpose(id=" + this.id + ", name=" + this.name + ", descriptionText=" + this.descriptionText + ')';
    }
}
