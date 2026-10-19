###### Class io.didomi.drawable.C1840n3 (io.didomi.sdk.n3)
.class public final Lio/didomi/sdk/n3;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u001a\u0019\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "Lio/didomi/sdk/m3;",
        "Lio/didomi/sdk/G8;",
        "userChoicesInfoProvider",
        "",
        "a",
        "(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public static final a(Lio/didomi/sdk/m3;Lio/didomi/sdk/G8;)V
    .registers 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChoicesInfoProvider"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/didomi/sdk/m3;->d()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/didomi/sdk/G8;->g(Ljava/util/Set;)V

    invoke-virtual {p0}, Lio/didomi/sdk/m3;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/didomi/sdk/G8;->c(Ljava/util/Set;)V

    invoke-virtual {p0}, Lio/didomi/sdk/m3;->c()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/didomi/sdk/G8;->i(Ljava/util/Set;)V

    invoke-virtual {p0}, Lio/didomi/sdk/m3;->a()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/p;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-virtual {p1, p0}, Lio/didomi/sdk/G8;->e(Ljava/util/Set;)V

    return-void
.end method
