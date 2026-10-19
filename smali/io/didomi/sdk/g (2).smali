###### Class io.didomi.drawable.C1766g (io.didomi.sdk.g)
.class public Lio/didomi/sdk/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0017\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JI\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\n2\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0011\u00a2\u0006\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "Lio/didomi/sdk/g;",
        "",
        "<init>",
        "()V",
        "Lio/didomi/sdk/apiEvents/a;",
        "apiEventsFactory",
        "Lio/didomi/sdk/J;",
        "connectivityHelper",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/Z2;",
        "httpRequestHelper",
        "Lkotlinx/coroutines/CoroutineDispatcher;",
        "coroutineDispatcher",
        "Lio/didomi/sdk/V8;",
        "vendorRepository",
        "Lio/didomi/sdk/H;",
        "configurationRepository",
        "Lio/didomi/sdk/apiEvents/b;",
        "a",
        "(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/CoroutineDispatcher;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;",
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
.method public a(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lkotlinx/coroutines/r;Lio/didomi/sdk/V8;Lio/didomi/sdk/H;)Lio/didomi/sdk/apiEvents/b;
    .registers 19

    move-object v8, p2

    const-string v0, "apiEventsFactory"

    move-object v1, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connectivityHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contextHelper"

    move-object v3, p3

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpRequestHelper"

    move-object v4, p4

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineDispatcher"

    move-object/from16 v7, p5

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "vendorRepository"

    move-object/from16 v2, p6

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationRepository"

    move-object/from16 v5, p7

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v9, Lio/didomi/sdk/apiEvents/b;

    invoke-virtual/range {p6 .. p6}, Lio/didomi/sdk/V8;->h()Lio/didomi/sdk/r5;

    move-result-object v6

    invoke-virtual/range {p7 .. p7}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->e()Lio/didomi/sdk/k$f;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->d(Lio/didomi/sdk/k$f;)Lio/didomi/sdk/k$f$d;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$f$d;->b()Ljava/lang/String;

    move-result-object v10

    move-object v0, v9

    move-object v2, p2

    move-object v5, v6

    move-object v6, v10

    invoke-direct/range {v0 .. v7}, Lio/didomi/sdk/apiEvents/b;-><init>(Lio/didomi/sdk/apiEvents/a;Lio/didomi/sdk/J;Lio/didomi/sdk/Z;Lio/didomi/sdk/Z2;Lio/didomi/sdk/r5;Ljava/lang/String;Lkotlinx/coroutines/r;)V

    invoke-virtual {p2, v9}, Lio/didomi/sdk/J;->a(Lio/didomi/sdk/K;)Z

    return-object v9
.end method
