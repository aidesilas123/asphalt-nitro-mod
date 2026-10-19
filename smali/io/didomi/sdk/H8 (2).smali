###### Class io.didomi.drawable.H8 (io.didomi.sdk.H8)
.class public final Lio/didomi/sdk/H8;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u001a!\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0007\u001a\u0019\u0010\u0006\u001a\u00020\n*\u00020\u00002\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lio/didomi/sdk/G8;",
        "Lio/didomi/sdk/consent/model/ConsentToken;",
        "consentToken",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "",
        "a",
        "(Lio/didomi/sdk/G8;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/V8;)V",
        "",
        "purposeId",
        "",
        "(Lio/didomi/sdk/G8;Ljava/lang/String;)Z",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/G8;Lio/didomi/sdk/consent/model/ConsentToken;Lio/didomi/sdk/V8;)V
    .registers 4

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consentToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->l()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lio/didomi/sdk/V8;->n()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Lio/didomi/sdk/G8;->a(Lio/didomi/sdk/consent/model/ConsentToken;Ljava/util/Collection;Ljava/util/Collection;)V

    return-void
.end method

.method public static final a(Lio/didomi/sdk/G8;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purposeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/G8;->f()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lio/didomi/sdk/G8;->h()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0, p1}, Lio/didomi/sdk/p3;->a(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method
