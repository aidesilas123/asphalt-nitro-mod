###### Class com.bytedance.sdk.openadsdk.core.settings.c (com.bytedance.sdk.openadsdk.core.settings.c)
.class public Lcom/bytedance/sdk/openadsdk/core/settings/c;
.super Ljava/lang/Object;
.source "AppSetIdAndScope.java"


# static fields
.field private static volatile a:Ljava/lang/String; = ""

.field private static volatile b:Ljava/lang/String; = ""

.field private static c:Ljava/lang/String;

.field private static d:I


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method static synthetic a(I)I
    .registers 1

    sput p0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->d:I

    return p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .registers 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->t()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2b

    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v2, "com.google.android.gms.appset.AppSet"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/android/gms/appset/AppSet;->getClient(Landroid/content/Context;)Lcom/google/android/gms/appset/AppSetIdClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/appset/AppSetIdClient;->getAppSetIdInfo()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_21

    goto :goto_2d

    :catchall_21
    const-string v0, "AppSetIdAndScope"

    const-string v2, "if you want to use appSetId, you must add \'com.google.android.gms:play-services-appset:x.x.x\' into your build.gradle "

    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/utils/l;->b(Ljava/lang/String;Ljava/lang/String;)V

    sput v1, Lcom/bytedance/sdk/openadsdk/core/settings/c;->d:I

    goto :goto_2d

    :cond_2b
    sput v1, Lcom/bytedance/sdk/openadsdk/core/settings/c;->d:I

    :goto_2d
    return-void
.end method

.method public static b()Ljava/lang/String;
    .registers 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->d:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static c()Ljava/lang/String;
    .registers 1

    sget v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->d:I

    if-eqz v0, :cond_7

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->b:Ljava/lang/String;

    return-object v0

    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ac;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->c:Ljava/lang/String;

    :cond_1a
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->c:Ljava/lang/String;

    if-nez v0, :cond_22

    const-string v0, ""

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->c:Ljava/lang/String;

    :cond_22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/settings/c;->c:Ljava/lang/String;

    return-object v0
.end method

###### Class com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1 (com.bytedance.sdk.openadsdk.core.settings.AppSetIdAndScope$1)
.class final Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;
.super Ljava/lang/Object;
.source "AppSetIdAndScope.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnSuccessListener<",
        "Lcom/google/android/gms/appset/AppSetIdInfo;",
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
.method public onSuccess(Lcom/google/android/gms/appset/AppSetIdInfo;)V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getScope()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/appset/AppSetIdInfo;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/c;->b(Ljava/lang/String;)Ljava/lang/String;

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/c;->a(I)I

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .registers 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    check-cast p1, Lcom/google/android/gms/appset/AppSetIdInfo;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/AppSetIdAndScope$1;->onSuccess(Lcom/google/android/gms/appset/AppSetIdInfo;)V

    return-void
.end method
