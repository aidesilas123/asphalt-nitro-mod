###### Class io.didomi.drawable.L (io.didomi.sdk.L)
.class public Lio/didomi/sdk/L;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J?\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u001f\u0010\u0011\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0013H\u0017\u00a2\u0006\u0004\u0008\u0011\u0010\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lio/didomi/sdk/L;",
        "",
        "<init>",
        "()V",
        "Landroid/content/SharedPreferences;",
        "sharedPreferences",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/j0;",
        "dcsRepository",
        "Lio/didomi/sdk/h3;",
        "iabStorageRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/V;",
        "a",
        "(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/s3;",
        "(Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)Lio/didomi/sdk/V;
    .registers 15

    const-string v0, "sharedPreferences"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dcsRepository"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "iabStorageRepository"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/V;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lio/didomi/sdk/V;-><init>(Landroid/content/SharedPreferences;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;Lio/didomi/sdk/j0;Lio/didomi/sdk/h3;Lio/didomi/sdk/v3;)V

    return-object v0
.end method

.method public a(Lio/didomi/sdk/H;Landroid/content/Context;)Lio/didomi/sdk/s3;
    .registers 4

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k;->b()Lio/didomi/sdk/k$c;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$c;->a()Z

    move-result p1

    if-eqz p1, :cond_1e

    new-instance p1, Lio/didomi/sdk/h5;

    invoke-direct {p1}, Lio/didomi/sdk/h5;-><init>()V

    goto :goto_24

    :cond_1e
    new-instance p1, Lio/didomi/sdk/J2;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lio/didomi/sdk/J2;-><init>(Z)V

    :goto_24
    return-object p1
.end method
