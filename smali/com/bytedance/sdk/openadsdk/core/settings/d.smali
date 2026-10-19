###### Class com.bytedance.sdk.openadsdk.core.settings.d (com.bytedance.sdk.openadsdk.core.settings.d)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/settings/d;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/settings/d$a;,
        Lcom/bytedance/sdk/openadsdk/core/settings/d$b;
    }
.end annotation


# static fields
.field public static final a:Lcom/bytedance/sdk/openadsdk/core/settings/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/d$b<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/bytedance/sdk/openadsdk/core/settings/d$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/core/settings/d$b<",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/d$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/d$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/d;->a:Lcom/bytedance/sdk/openadsdk/core/settings/d$b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/settings/d$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/d$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/d;->b:Lcom/bytedance/sdk/openadsdk/core/settings/d$b;

    return-void
.end method


# virtual methods
.method public abstract a(Lorg/json/JSONObject;)V
.end method

###### Class com.bytedance.sdk.openadsdk.core.settings.d.AnonymousClass1 (com.bytedance.sdk.openadsdk.core.settings.d$1)
.class final Lcom/bytedance/sdk/openadsdk/core/settings/d$1;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/settings/d$b<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lorg/json/JSONObject;
    .registers 4

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception p1

    const-string v0, "ISettingsDataRepository"

    const-string v1, ""

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/d$1;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.core.settings.d.AnonymousClass2 (com.bytedance.sdk.openadsdk.core.settings.d$2)
.class final Lcom/bytedance/sdk/openadsdk/core/settings/d$2;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/settings/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/settings/d$b<",
        "Ljava/util/Set<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :try_start_5
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    :goto_f
    if-ge p1, v2, :cond_23

    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_18} :catch_1b

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :catch_1b
    move-exception p1

    const-string v1, "ISettingsDataRepository"

    const-string v2, ""

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/component/utils/l;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_23
    return-object v0
.end method

.method public synthetic b(Ljava/lang/String;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/d$2;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

###### Class com.bytedance.sdk.openadsdk.core.settings.d.a (com.bytedance.sdk.openadsdk.core.settings.d$a)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "a"
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a(Ljava/lang/String;F)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/settings/d$a;
.end method

.method public abstract a()V
.end method

###### Class com.bytedance.sdk.openadsdk.core.settings.d.b (com.bytedance.sdk.openadsdk.core.settings.d$b)
.class public interface abstract Lcom/bytedance/sdk/openadsdk/core/settings/d$b;
.super Ljava/lang/Object;
.source "ISettingsDataRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract b(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
