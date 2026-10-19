###### Class com.unity3d.ads.core.data.datasource.AndroidDeveloperConsentDataSource (com.unity3d.ads.core.data.datasource.AndroidDeveloperConsentDataSource)
.class public final Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;
.super Ljava/lang/Object;
.source "AndroidDeveloperConsentDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\r0\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002J\u0017\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0002\u00a2\u0006\u0002\u0010\u0014J\u0012\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0002R\u0014\u0010\u0007\u001a\u00020\u00088VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;",
        "Lcom/unity3d/ads/core/data/datasource/DeveloperConsentDataSource;",
        "flattenerRulesUseCase",
        "Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;",
        "publicStorage",
        "Lcom/unity3d/services/core/misc/JsonStorage;",
        "(Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;Lcom/unity3d/services/core/misc/JsonStorage;)V",
        "developerConsent",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "getDeveloperConsent",
        "()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;",
        "developerConsentList",
        "",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
        "fetchData",
        "Lorg/json/JSONObject;",
        "getDeveloperConsentChoice",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
        "choice",
        "",
        "(Ljava/lang/Boolean;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;",
        "getDeveloperConsentType",
        "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;",
        "type",
        "",
        "unity-ads_release"
    }
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final flattenerRulesUseCase:Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;

.field private final publicStorage:Lcom/unity3d/services/core/misc/JsonStorage;


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;Lcom/unity3d/services/core/misc/JsonStorage;)V
    .registers 4

    const-string v0, "flattenerRulesUseCase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "publicStorage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->flattenerRulesUseCase:Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;

    iput-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->publicStorage:Lcom/unity3d/services/core/misc/JsonStorage;

    return-void
.end method

.method private final developerConsentList()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->fetchData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_54

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lgateway/v1/m;->a:Lgateway/v1/m$a;

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;->newBuilder()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;

    move-result-object v6

    const-string v7, "newBuilder()"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Lgateway/v1/m$a;->a(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption$a;)Lgateway/v1/m;

    move-result-object v5

    invoke-direct {p0, v3}, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->getDeveloperConsentType(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v6

    invoke-virtual {v5, v6}, Lgateway/v1/m;->d(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;)V

    invoke-virtual {v5}, Lgateway/v1/m;->b()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    move-result-object v6

    sget-object v7, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    if-ne v6, v7, :cond_43

    const-string v6, "key"

    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Lgateway/v1/m;->c(Ljava/lang/String;)V

    :cond_43
    check-cast v4, Ljava/lang/Boolean;

    invoke-direct {p0, v4}, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->getDeveloperConsentChoice(Ljava/lang/Boolean;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    move-result-object v3

    invoke-virtual {v5, v3}, Lgateway/v1/m;->e(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;)V

    invoke-virtual {v5}, Lgateway/v1/m;->a()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentOption;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_54
    return-object v0
.end method

.method private final fetchData()Lorg/json/JSONObject;
    .registers 4

    iget-object v0, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->publicStorage:Lcom/unity3d/services/core/misc/JsonStorage;

    invoke-virtual {v0}, Lcom/unity3d/services/core/misc/JsonStorage;->getData()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v0, Lcom/unity3d/services/core/misc/JsonFlattener;

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->publicStorage:Lcom/unity3d/services/core/misc/JsonStorage;

    invoke-virtual {v1}, Lcom/unity3d/services/core/misc/JsonStorage;->getData()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/unity3d/services/core/misc/JsonFlattener;-><init>(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->flattenerRulesUseCase:Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;

    invoke-interface {v1}, Lcom/unity3d/ads/core/domain/privacy/FlattenerRulesUseCase;->invoke()Lcom/unity3d/services/core/misc/JsonFlattenerRules;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v0, v2, v1}, Lcom/unity3d/services/core/misc/JsonFlattener;->flattenJson(Ljava/lang/String;Lcom/unity3d/services/core/misc/JsonFlattenerRules;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "flattener.flattenJson(\".\u2026 flattenerRulesUseCase())"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    return-object v0
.end method

.method private final getDeveloperConsentChoice(Ljava/lang/Boolean;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;
    .registers 3

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    goto :goto_18

    :cond_b
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_16

    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    goto :goto_18

    :cond_16
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentChoice;

    :goto_18
    return-object p1
.end method

.method private final getDeveloperConsentType(Ljava/lang/String;)Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;
    .registers 3

    if-eqz p1, :cond_49

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_4c

    goto :goto_46

    :sswitch_a
    const-string v0, "user.nonBehavioral.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_46

    :cond_13
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->c:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :sswitch_16
    const-string v0, "privacy.useroveragelimit.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_46

    :cond_1f
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->g:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :sswitch_22
    const-string v0, "privacy.consent.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2b

    goto :goto_46

    :cond_2b
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->e:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :sswitch_2e
    const-string v0, "pipl.consent.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_37

    goto :goto_46

    :cond_37
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->d:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :sswitch_3a
    const-string v0, "gdpr.consent.value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_43

    goto :goto_46

    :cond_43
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->f:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :goto_46
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->b:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    goto :goto_4b

    :cond_49
    sget-object p1, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;->a:Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsentType;

    :goto_4b
    return-object p1

    :sswitch_data_4c
    .sparse-switch
        -0x645e6d72 -> :sswitch_3a
        -0x310a1dc -> :sswitch_2e
        0x32a6d2b7 -> :sswitch_22
        0x4fb0e924 -> :sswitch_16
        0x61f2108a -> :sswitch_a
    .end sparse-switch
.end method


# virtual methods
.method public getDeveloperConsent()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;
    .registers 4

    sget-object v0, Lgateway/v1/l;->a:Lgateway/v1/l$a;

    invoke-static {}, Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;->newBuilder()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;

    move-result-object v1

    const-string v2, "newBuilder()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lgateway/v1/l$a;->a(Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent$a;)Lgateway/v1/l;

    move-result-object v0

    invoke-virtual {v0}, Lgateway/v1/l;->c()Lcom/google/protobuf/kotlin/a;

    move-result-object v1

    invoke-direct {p0}, Lcom/unity3d/ads/core/data/datasource/AndroidDeveloperConsentDataSource;->developerConsentList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgateway/v1/l;->b(Lcom/google/protobuf/kotlin/a;Ljava/lang/Iterable;)V

    invoke-virtual {v0}, Lgateway/v1/l;->a()Lgateway/v1/DeveloperConsentOuterClass$DeveloperConsent;

    move-result-object v0

    return-object v0
.end method
