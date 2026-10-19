###### Class io.didomi.drawable.H (io.didomi.sdk.H)
.class public final Lio/didomi/sdk/H;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/didomi/sdk/H$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000x\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0018\u0018\u0000 V2\u00020\u0001:\u0001\u001cB\'\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u001f\u0010\u0010\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000e2\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0013\u001a\n \u000f*\u0004\u0018\u00010\u00120\u00122\u0006\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0002\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aJ\u0017\u0010\u001c\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u0018H\u0002\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u000f\u0010\u001f\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u001f\u0010 J\u0017\u0010\u001c\u001a\u00020\"2\u0006\u0010!\u001a\u00020\u001eH\u0002\u00a2\u0006\u0004\u0008\u001c\u0010#J\u0015\u0010\u001c\u001a\u00020\"2\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u001c\u0010$J\u0015\u0010\u001c\u001a\u00020\"2\u0006\u0010&\u001a\u00020%\u00a2\u0006\u0004\u0008\u001c\u0010\'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010)R\u0017\u0010+\u001a\u00020\u00188\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010*\u001a\u0004\u0008\u001c\u0010\u001aR\u0016\u0010-\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008,\u0010*R\u0016\u0010/\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008.\u0010*R\u0016\u00101\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u0010*R\u0016\u00102\u001a\u0004\u0018\u00010\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010*R\u0014\u00103\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010*R\u0014\u00106\u001a\u0002048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u00105R\u0018\u00108\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00087\u0010*R\u0018\u0010:\u001a\u0004\u0018\u00010\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010*R\u0018\u0010>\u001a\u0004\u0018\u00010;8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008<\u0010=R\u001b\u0010C\u001a\u00020?8FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008@\u0010A\u001a\u0004\u0008.\u0010BR$\u0010G\u001a\u00020;2\u0006\u0010D\u001a\u00020;8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008E\u0010F\u001a\u0004\u0008G\u0010HR\u0018\u0010K\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008I\u0010JR\u0018\u0010N\u001a\u0004\u0018\u00010\u00158\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008L\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008O\u0010PR\u0011\u0010S\u001a\u00020\u000e8F\u00a2\u0006\u0006\u001a\u0004\u00080\u0010RR\u0011\u0010T\u001a\u00020\u00158F\u00a2\u0006\u0006\u001a\u0004\u0008,\u0010\u0017R\u0011\u0010!\u001a\u00020\u001e8F\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010 R\u0013\u0010U\u001a\u0004\u0018\u00010\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u001a\u00a8\u0006W"
    }
    d2 = {
        "Lio/didomi/sdk/H;",
        "",
        "Lio/didomi/sdk/l5;",
        "remoteFilesHelper",
        "Lio/didomi/sdk/Z;",
        "contextHelper",
        "Lio/didomi/sdk/z3;",
        "localPropertiesRepository",
        "Lio/didomi/sdk/DidomiInitializeParameters;",
        "parameters",
        "<init>",
        "(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V",
        "Landroid/content/Context;",
        "context",
        "Lio/didomi/sdk/u5;",
        "kotlin.jvm.PlatformType",
        "b",
        "(Landroid/content/Context;)Lio/didomi/sdk/u5;",
        "Lio/didomi/sdk/w5;",
        "c",
        "(Landroid/content/Context;)Lio/didomi/sdk/w5;",
        "Lio/didomi/sdk/d3;",
        "h",
        "()Lio/didomi/sdk/d3;",
        "",
        "i",
        "()Ljava/lang/String;",
        "iabConfigurationJson",
        "a",
        "(Ljava/lang/String;)Lio/didomi/sdk/d3;",
        "Lio/didomi/sdk/k;",
        "g",
        "()Lio/didomi/sdk/k;",
        "appConfiguration",
        "",
        "(Lio/didomi/sdk/k;)V",
        "(Landroid/content/Context;)V",
        "Lio/didomi/sdk/models/InternalVendor;",
        "vendor",
        "(Lio/didomi/sdk/models/InternalVendor;)V",
        "Lio/didomi/sdk/l5;",
        "Lio/didomi/sdk/Z;",
        "Ljava/lang/String;",
        "apiKey",
        "d",
        "providerId",
        "e",
        "noticeId",
        "f",
        "countryCode",
        "regionCode",
        "cacheFileName",
        "Lcom/google/gson/Gson;",
        "Lcom/google/gson/Gson;",
        "gson",
        "j",
        "localConfigurationPath",
        "k",
        "remoteConfigurationUrl",
        "",
        "l",
        "Ljava/lang/Boolean;",
        "disableDidomiRemoteConfig",
        "Lio/didomi/sdk/Regulation;",
        "m",
        "Lkotlin/Lazy;",
        "()Lio/didomi/sdk/Regulation;",
        "regulation",
        "<set-?>",
        "n",
        "Z",
        "isConfigLoadedFromDidomi",
        "()Z",
        "o",
        "Lio/didomi/sdk/u5;",
        "internalSdkConfiguration",
        "p",
        "Lio/didomi/sdk/d3;",
        "internalIabConfiguration",
        "q",
        "Lio/didomi/sdk/k;",
        "internalAppConfiguration",
        "()Lio/didomi/sdk/u5;",
        "sdkConfiguration",
        "iabConfiguration",
        "deploymentId",
        "r",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# static fields
.field public static final r:Lio/didomi/sdk/H$a;


# instance fields
.field private final a:Lio/didomi/sdk/l5;

.field private final b:Lio/didomi/sdk/Z;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lcom/google/gson/Gson;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;

.field private final m:Lkotlin/i;

.field private n:Z

.field private o:Lio/didomi/sdk/u5;

.field private p:Lio/didomi/sdk/d3;

.field private q:Lio/didomi/sdk/k;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lio/didomi/sdk/H$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/didomi/sdk/H$a;-><init>(Lkotlin/jvm/internal/n;)V

    sput-object v0, Lio/didomi/sdk/H;->r:Lio/didomi/sdk/H$a;

    return-void
.end method

.method public constructor <init>(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "remoteFilesHelper"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "contextHelper"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "localPropertiesRepository"

    move-object/from16 v5, p3

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "parameters"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lio/didomi/sdk/H;->a:Lio/didomi/sdk/l5;

    iput-object v2, v0, Lio/didomi/sdk/H;->b:Lio/didomi/sdk/Z;

    iget-object v1, v3, Lio/didomi/sdk/DidomiInitializeParameters;->apiKey:Ljava/lang/String;

    iput-object v1, v0, Lio/didomi/sdk/H;->c:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iput-object v4, v0, Lio/didomi/sdk/H;->i:Lcom/google/gson/Gson;

    new-instance v4, Lio/didomi/sdk/H$b;

    invoke-direct {v4, v0}, Lio/didomi/sdk/H$b;-><init>(Lio/didomi/sdk/H;)V

    invoke-static {v4}, Lkotlin/j;->lazy(Lkotlin/jvm/b/a;)Lkotlin/i;

    move-result-object v4

    iput-object v4, v0, Lio/didomi/sdk/H;->m:Lkotlin/i;

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/Z;->g()Z

    move-result v4

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eqz v4, :cond_5d

    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->localConfigurationPath:Ljava/lang/String;

    if-nez v4, :cond_4f

    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->remoteConfigurationUrl:Ljava/lang/String;

    if-nez v4, :cond_4f

    iget-boolean v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->disableDidomiRemoteConfig:Z

    if-eqz v4, :cond_54

    :cond_4f
    const-string v4, "TV device detected: Only remote console configuration is allowed"

    invoke-static {v4, v7, v6, v7}, Lio/didomi/sdk/Log;->w$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    :cond_54
    iput-object v7, v0, Lio/didomi/sdk/H;->j:Ljava/lang/String;

    iput-object v7, v0, Lio/didomi/sdk/H;->k:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v4, v0, Lio/didomi/sdk/H;->l:Ljava/lang/Boolean;

    goto :goto_71

    :cond_5d
    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->localConfigurationPath:Ljava/lang/String;

    if-nez v4, :cond_63

    const-string v4, "didomi_config.json"

    :cond_63
    iput-object v4, v0, Lio/didomi/sdk/H;->j:Ljava/lang/String;

    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->remoteConfigurationUrl:Ljava/lang/String;

    iput-object v4, v0, Lio/didomi/sdk/H;->k:Ljava/lang/String;

    iget-boolean v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->disableDidomiRemoteConfig:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, v0, Lio/didomi/sdk/H;->l:Ljava/lang/Boolean;

    :goto_71
    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->providerId:Ljava/lang/String;

    iput-object v4, v0, Lio/didomi/sdk/H;->d:Ljava/lang/String;

    invoke-virtual/range {p2 .. p2}, Lio/didomi/sdk/Z;->g()Z

    move-result v2

    if-eqz v2, :cond_7e

    iget-object v2, v3, Lio/didomi/sdk/DidomiInitializeParameters;->tvNoticeId:Ljava/lang/String;

    goto :goto_80

    :cond_7e
    iget-object v2, v3, Lio/didomi/sdk/DidomiInitializeParameters;->noticeId:Ljava/lang/String;

    :goto_80
    iput-object v2, v0, Lio/didomi/sdk/H;->e:Ljava/lang/String;

    iget-object v4, v3, Lio/didomi/sdk/DidomiInitializeParameters;->countryCode:Ljava/lang/String;

    iput-object v4, v0, Lio/didomi/sdk/H;->f:Ljava/lang/String;

    if-eqz v4, :cond_8a

    iget-object v7, v3, Lio/didomi/sdk/DidomiInitializeParameters;->regionCode:Ljava/lang/String;

    :cond_8a
    iput-object v7, v0, Lio/didomi/sdk/H;->g:Ljava/lang/String;

    invoke-virtual/range {p3 .. p3}, Lio/didomi/sdk/z3;->b()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_94

    const-string v3, "1.0.0"

    :cond_94
    invoke-virtual/range {p3 .. p3}, Lio/didomi/sdk/z3;->a()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x6

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    const/4 v1, 0x1

    aput-object v2, v8, v1

    aput-object v3, v8, v6

    const/4 v2, 0x3

    aput-object v4, v8, v2

    const/4 v2, 0x4

    aput-object v7, v8, v2

    const/4 v2, 0x5

    aput-object v5, v8, v2

    invoke-static {v8}, Lkotlin/collections/p;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3e

    const/16 v18, 0x0

    const-string v11, "_"

    invoke-static/range {v10 .. v18}, Lkotlin/collections/p;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/b/l;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lkotlin/jvm/internal/o0;->a:Lkotlin/jvm/internal/o0;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v9

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "didomi_config_cache_%s.json"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, v0, Lio/didomi/sdk/H;->h:Ljava/lang/String;

    return-void
.end method

.method private final a(Ljava/lang/String;)Lio/didomi/sdk/d3;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/H;->i:Lcom/google/gson/Gson;

    const-class v1, Lio/didomi/sdk/f3;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(\n         \u2026FV2::class.java\n        )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lio/didomi/sdk/d3;

    return-object p1
.end method

.method private final a(Lio/didomi/sdk/k;)V
    .registers 3

    invoke-virtual {p1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object p1

    invoke-virtual {p1}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object p1

    iget-boolean v0, p0, Lio/didomi/sdk/H;->n:Z

    invoke-virtual {p1, v0}, Lio/didomi/sdk/k$a$b$a;->a(Z)V

    return-void
.end method

.method private final b(Landroid/content/Context;)Lio/didomi/sdk/u5;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/H;->o:Lio/didomi/sdk/u5;

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lio/didomi/sdk/H;->c(Landroid/content/Context;)Lio/didomi/sdk/w5;

    move-result-object v0

    :cond_8
    return-object v0
.end method

.method private final c(Landroid/content/Context;)Lio/didomi/sdk/w5;
    .registers 4

    iget-object v0, p0, Lio/didomi/sdk/H;->i:Lcom/google/gson/Gson;

    const-string v1, "didomi_master_config.json"

    invoke-static {p1, v1}, Lio/didomi/sdk/a0;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lio/didomi/sdk/w5;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/didomi/sdk/w5;

    return-object p1
.end method

.method private final g()Lio/didomi/sdk/k;
    .registers 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lio/didomi/sdk/H;->q:Lio/didomi/sdk/k;

    if-eqz v1, :cond_a

    invoke-direct {v0, v1}, Lio/didomi/sdk/H;->a(Lio/didomi/sdk/k;)V

    return-object v1

    :cond_a
    const/4 v1, 0x0

    iput-boolean v1, v0, Lio/didomi/sdk/H;->n:Z

    iget-object v3, v0, Lio/didomi/sdk/H;->k:Ljava/lang/String;

    if-eqz v3, :cond_26

    new-instance v1, Lio/didomi/sdk/k5;

    iget-object v5, v0, Lio/didomi/sdk/H;->h:Ljava/lang/String;

    iget-object v7, v0, Lio/didomi/sdk/H;->j:Ljava/lang/String;

    const/4 v4, 0x1

    const/16 v6, 0xe10

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xe0

    const/4 v13, 0x0

    move-object v2, v1

    invoke-direct/range {v2 .. v13}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZILkotlin/jvm/internal/n;)V

    goto :goto_73

    :cond_26
    iget-object v1, v0, Lio/didomi/sdk/H;->l:Ljava/lang/Boolean;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    const/4 v1, 0x1

    iput-boolean v1, v0, Lio/didomi/sdk/H;->n:Z

    iget-object v1, v0, Lio/didomi/sdk/H;->b:Lio/didomi/sdk/Z;

    iget-object v2, v0, Lio/didomi/sdk/H;->c:Ljava/lang/String;

    iget-object v3, v0, Lio/didomi/sdk/H;->e:Ljava/lang/String;

    iget-object v4, v0, Lio/didomi/sdk/H;->f:Ljava/lang/String;

    iget-object v5, v0, Lio/didomi/sdk/H;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lio/didomi/sdk/Z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    new-instance v1, Lio/didomi/sdk/k5;

    iget-object v9, v0, Lio/didomi/sdk/H;->h:Ljava/lang/String;

    iget-object v11, v0, Lio/didomi/sdk/H;->j:Ljava/lang/String;

    const/4 v8, 0x1

    const/16 v10, 0xe10

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xe0

    const/16 v17, 0x0

    move-object v6, v1

    invoke-direct/range {v6 .. v17}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZILkotlin/jvm/internal/n;)V

    goto :goto_73

    :cond_57
    const/4 v1, 0x2

    const-string v2, "The parameter `disableDidomiRemoteConfig` is deprecated, in the future it will be mandatory to create your notice from the console (see https://developers.didomi.io/cmp/mobile-sdk/android/setup#from-the-console-recommended for more information)."

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v1, Lio/didomi/sdk/k5;

    iget-object v7, v0, Lio/didomi/sdk/H;->h:Ljava/lang/String;

    iget-object v9, v0, Lio/didomi/sdk/H;->j:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0xe10

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0xe0

    const/4 v15, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v15}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZILkotlin/jvm/internal/n;)V

    :goto_73
    iget-object v2, v0, Lio/didomi/sdk/H;->i:Lcom/google/gson/Gson;

    iget-object v3, v0, Lio/didomi/sdk/H;->a:Lio/didomi/sdk/l5;

    invoke-virtual {v3, v1}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v1

    const-class v3, Lio/didomi/sdk/k;

    invoke-virtual {v2, v1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/didomi/sdk/k;

    const-string v2, "appConfiguration"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/didomi/sdk/H;->a(Lio/didomi/sdk/k;)V

    return-object v1
.end method

.method private final h()Lio/didomi/sdk/d3;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/H;->p:Lio/didomi/sdk/d3;

    if-nez v0, :cond_c

    invoke-direct {p0}, Lio/didomi/sdk/H;->i()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lio/didomi/sdk/H;->a(Ljava/lang/String;)Lio/didomi/sdk/d3;

    move-result-object v0

    :cond_c
    invoke-virtual {p0}, Lio/didomi/sdk/H;->f()Lio/didomi/sdk/u5;

    move-result-object v1

    invoke-static {v0, v1}, Lio/didomi/sdk/e3;->a(Lio/didomi/sdk/d3;Lio/didomi/sdk/u5;)V

    return-object v0
.end method

.method private final i()Ljava/lang/String;
    .registers 16

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a$b$a;->e()I

    move-result v0

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object v1

    invoke-virtual {v1}, Lio/didomi/sdk/k$a$b$a;->i()Z

    move-result v1

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a;->m()Lio/didomi/sdk/k$a$b;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a$b;->d()Lio/didomi/sdk/k$a$b$a;

    move-result-object v2

    invoke-virtual {v2}, Lio/didomi/sdk/k$a$b$a;->k()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    new-instance v13, Lio/didomi/sdk/k5;

    iget-object v3, p0, Lio/didomi/sdk/H;->b:Lio/didomi/sdk/Z;

    invoke-virtual {v3, v0}, Lio/didomi/sdk/Z;->a(I)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "didomi_iab_config_v"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x0

    if-eqz v1, :cond_5c

    move-object v8, v14

    goto :goto_71

    :cond_5c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".json"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    :goto_71
    const/4 v9, 0x0

    int-to-long v10, v2

    if-nez v2, :cond_7a

    if-eqz v1, :cond_7a

    const/4 v0, 0x1

    const/4 v12, 0x1

    goto :goto_7c

    :cond_7a
    const/4 v0, 0x0

    const/4 v12, 0x0

    :goto_7c
    const/4 v5, 0x1

    const v7, 0x93a80

    move-object v3, v13

    invoke-direct/range {v3 .. v12}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZ)V

    iget-object v0, p0, Lio/didomi/sdk/H;->a:Lio/didomi/sdk/l5;

    invoke-virtual {v0, v13}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8d

    return-object v0

    :cond_8d
    const/4 v0, 0x2

    const-string v1, "Unable to download the IAB vendors list"

    invoke-static {v1, v14, v0, v14}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-direct {p0}, Lio/didomi/sdk/H;->g()Lio/didomi/sdk/k;

    move-result-object v0

    iput-object v0, p0, Lio/didomi/sdk/H;->q:Lio/didomi/sdk/k;

    invoke-direct {p0, p1}, Lio/didomi/sdk/H;->b(Landroid/content/Context;)Lio/didomi/sdk/u5;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/H;->o:Lio/didomi/sdk/u5;

    invoke-direct {p0}, Lio/didomi/sdk/H;->h()Lio/didomi/sdk/d3;

    move-result-object p1

    iput-object p1, p0, Lio/didomi/sdk/H;->p:Lio/didomi/sdk/d3;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_17} :catch_18

    return-void

    :catch_18
    move-exception p1

    const-string v0, "Unable to load the configuration for the Didomi SDK"

    invoke-static {v0, p1}, Lio/didomi/sdk/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final a(Lio/didomi/sdk/models/InternalVendor;)V
    .registers 15

    const-string v0, "vendor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lio/didomi/sdk/models/InternalVendor;->getDeviceStorageDisclosureUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    return-void

    :cond_c
    new-instance v0, Lio/didomi/sdk/k5;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xe0

    const/4 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v12}, Lio/didomi/sdk/k5;-><init>(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;ZJZILkotlin/jvm/internal/n;)V

    iget-object v1, p0, Lio/didomi/sdk/H;->a:Lio/didomi/sdk/l5;

    invoke-virtual {v1, v0}, Lio/didomi/sdk/l5;->b(Lio/didomi/sdk/k5;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_24
    iget-object v2, p0, Lio/didomi/sdk/H;->i:Lcom/google/gson/Gson;

    const-class v3, Lio/didomi/sdk/models/DeviceStorageDisclosures;

    invoke-virtual {v2, v0, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/models/DeviceStorageDisclosures;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2e} :catch_2f

    goto :goto_46

    :catch_2f
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error while loading vendor device storage disclosures : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v0, v1, v2, v1}, Lio/didomi/sdk/Log;->e$default(Ljava/lang/String;Ljava/lang/Throwable;ILjava/lang/Object;)V

    move-object v0, v1

    :goto_46
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lio/didomi/sdk/models/DeviceStorageDisclosures;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4f

    move-object v1, v0

    :cond_4f
    invoke-static {p1, v1}, Lio/didomi/sdk/q3;->a(Lio/didomi/sdk/models/InternalVendor;Lio/didomi/sdk/models/DeviceStorageDisclosures;)V

    return-void
.end method

.method public final b()Lio/didomi/sdk/k;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/H;->q:Lio/didomi/sdk/k;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration was not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k;->a()Lio/didomi/sdk/k$a;

    move-result-object v0

    invoke-virtual {v0}, Lio/didomi/sdk/k$a;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lio/didomi/sdk/d3;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/H;->p:Lio/didomi/sdk/d3;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration was not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final e()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H;->m:Lkotlin/i;

    invoke-interface {v0}, Lkotlin/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/didomi/sdk/Regulation;

    return-object v0
.end method

.method public final f()Lio/didomi/sdk/u5;
    .registers 3

    iget-object v0, p0, Lio/didomi/sdk/H;->o:Lio/didomi/sdk/u5;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Configuration was not loaded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

###### Class io.didomi.sdk.H.a (io.didomi.sdk.H$a)
.class public final Lio/didomi/sdk/H$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/didomi/sdk/H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u0008\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\t\u00a8\u0006\u000b"
    }
    d2 = {
        "Lio/didomi/sdk/H$a;",
        "",
        "<init>",
        "()V",
        "",
        "CACHE_FILE_NAME",
        "Ljava/lang/String;",
        "",
        "DEFAULT_CACHE_IN_SECONDS",
        "I",
        "IAB_CONFIG_CACHE_IN_SECONDS",
        "android_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/n;)V
    .registers 2

    invoke-direct {p0}, Lio/didomi/sdk/H$a;-><init>()V

    return-void
.end method

###### Class io.didomi.sdk.H.b (io.didomi.sdk.H$b)
.class final Lio/didomi/sdk/H$b;
.super Lkotlin/jvm/internal/t;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/didomi/sdk/H;-><init>(Lio/didomi/sdk/l5;Lio/didomi/sdk/Z;Lio/didomi/sdk/z3;Lio/didomi/sdk/DidomiInitializeParameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/t;",
        "Lkotlin/jvm/b/a<",
        "Lio/didomi/sdk/Regulation;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0001\u001a\u00020\u0000H\n\u00a2\u0006\u0004\u0008\u0001\u0010\u0002"
    }
    d2 = {
        "Lio/didomi/sdk/Regulation;",
        "a",
        "()Lio/didomi/sdk/Regulation;"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field final synthetic a:Lio/didomi/sdk/H;


# direct methods
.method constructor <init>(Lio/didomi/sdk/H;)V
    .registers 2

    iput-object p1, p0, Lio/didomi/sdk/H$b;->a:Lio/didomi/sdk/H;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/t;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lio/didomi/sdk/Regulation;
    .registers 2

    iget-object v0, p0, Lio/didomi/sdk/H$b;->a:Lio/didomi/sdk/H;

    invoke-virtual {v0}, Lio/didomi/sdk/H;->b()Lio/didomi/sdk/k;

    move-result-object v0

    invoke-static {v0}, Lio/didomi/sdk/l;->c(Lio/didomi/sdk/k;)Lio/didomi/sdk/Regulation;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lio/didomi/sdk/H$b;->a()Lio/didomi/sdk/Regulation;

    move-result-object v0

    return-object v0
.end method
