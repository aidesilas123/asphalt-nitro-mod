###### Class io.didomi.drawable.C1832m5 (io.didomi.sdk.m5)
.class public Lio/didomi/sdk/m5;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000H\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\u0007\u001a\u00020\tH\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\nJ\'\u0010\u0007\u001a\u00020\u00102\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0011J7\u0010\u0007\u001a\u00020\u000e2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0004H\u0017\u00a2\u0006\u0004\u0008\u0007\u0010\u0018\u00a8\u0006\u0019"
    }
    d2 = {
        "Lio/didomi/sdk/m5;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/H;",
        "configuration",
        "Lio/didomi/sdk/h3;",
        "a",
        "(Lio/didomi/sdk/H;)Lio/didomi/sdk/h3;",
        "Lio/didomi/sdk/E8;",
        "()Lio/didomi/sdk/E8;",
        "configurationRepository",
        "Lio/didomi/sdk/v3;",
        "languagesHelper",
        "Lio/didomi/sdk/Z4;",
        "purposesTranslationsRepository",
        "Lio/didomi/sdk/V8;",
        "(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)Lio/didomi/sdk/V8;",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/l5;",
        "remoteFilesHelper",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "(Landroid/content/Context;Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/H;)Lio/didomi/sdk/Z4;",
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
.method public a()Lio/didomi/sdk/E8;
    .registers 5

    new-instance v0, Lio/didomi/sdk/E8;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lio/didomi/sdk/E8;-><init>(ZILkotlin/jvm/internal/n;)V

    return-object v0
.end method

.method public a(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)Lio/didomi/sdk/V8;
    .registers 5

    const-string v0, "configurationRepository"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "languagesHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purposesTranslationsRepository"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lio/didomi/sdk/V8;

    invoke-direct {v0, p1, p2, p3}, Lio/didomi/sdk/V8;-><init>(Lio/didomi/sdk/H;Lio/didomi/sdk/v3;Lio/didomi/sdk/Z4;)V

    return-object v0
.end method

.method public a(Landroid/content/Context;Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/H;)Lio/didomi/sdk/Z4;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "remoteFilesHelper"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "contextHelper"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "languagesHelper"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "configurationRepository"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/didomi/sdk/Z4;

    invoke-direct {p1, p2, p3, p4, p5}, Lio/didomi/sdk/Z4;-><init>(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/v3;Lio/didomi/sdk/H;)V

    invoke-virtual {p1}, Lio/didomi/sdk/Z4;->d()V

    return-object p1
.end method

.method public a(Lio/didomi/sdk/H;)Lio/didomi/sdk/h3;
    .registers 3

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lio/didomi/sdk/I;->i(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance p1, Lio/didomi/sdk/r;

    invoke-direct {p1}, Lio/didomi/sdk/r;-><init>()V

    goto :goto_32

    :cond_11
    invoke-static {p1}, Lio/didomi/sdk/I;->l(Lio/didomi/sdk/H;)Z

    move-result v0

    if-eqz v0, :cond_1d

    new-instance p1, Lio/didomi/sdk/E3;

    invoke-direct {p1}, Lio/didomi/sdk/E3;-><init>()V

    goto :goto_32

    :cond_1d
    invoke-virtual {p1}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object p1

    invoke-static {p1}, Lio/didomi/sdk/l;->b(Lio/didomi/sdk/k;)Z

    move-result p1

    if-nez p1, :cond_2d

    new-instance p1, Lio/didomi/sdk/g3;

    invoke-direct {p1}, Lio/didomi/sdk/g3;-><init>()V

    goto :goto_32

    :cond_2d
    new-instance p1, Lio/didomi/sdk/f6;

    invoke-direct {p1}, Lio/didomi/sdk/f6;-><init>()V

    :goto_32
    return-object p1
.end method
