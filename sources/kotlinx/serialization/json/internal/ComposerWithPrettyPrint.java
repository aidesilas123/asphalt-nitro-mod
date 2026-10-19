package kotlinx.serialization.json.internal;

import com.applovin.sdk.AppLovinEventTypes;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.Json;

/* JADX INFO: renamed from: kotlinx.serialization.json.internal.r, reason: from Kotlin metadata */
/* JADX INFO: compiled from: Composers.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016J\b\u0010\u000b\u001a\u00020\nH\u0016J\b\u0010\f\u001a\u00020\nH\u0016J\b\u0010\r\u001a\u00020\nH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lkotlinx/serialization/json/internal/ComposerWithPrettyPrint;", "Lkotlinx/serialization/json/internal/Composer;", "writer", "Lkotlinx/serialization/json/internal/JsonWriter;", "json", "Lkotlinx/serialization/json/Json;", "(Lkotlinx/serialization/json/internal/JsonWriter;Lkotlinx/serialization/json/Json;)V", AppLovinEventTypes.USER_COMPLETED_LEVEL, "", "indent", "", "nextItem", "space", "unIndent", "kotlinx-serialization-json"}, mv = {1, 7, 1}, xi = 48)
public final class ComposerWithPrettyPrint extends Composer {
    private final Json c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f10515d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ComposerWithPrettyPrint(JsonWriter writer, Json json) {
        super(writer);
        Intrinsics.checkNotNullParameter(writer, "writer");
        Intrinsics.checkNotNullParameter(json, "json");
        this.c = json;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void b() {
        n(true);
        this.f10515d++;
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void c() {
        n(false);
        j("\n");
        int i = this.f10515d;
        for (int i2 = 0; i2 < i; i2++) {
            j(this.c.getB().getPrettyPrintIndent());
        }
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void o() {
        e(' ');
    }

    @Override // kotlinx.serialization.json.internal.Composer
    public void p() {
        this.f10515d--;
    }
}
