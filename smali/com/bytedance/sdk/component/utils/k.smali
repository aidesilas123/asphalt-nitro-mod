###### Class com.bytedance.sdk.component.utils.k (com.bytedance.sdk.component.utils.k)
.class public Lcom/bytedance/sdk/component/utils/k;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/utils/k$b;,
        Lcom/bytedance/sdk/component/utils/k$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/bytedance/sdk/component/utils/k$a;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_f

    new-instance v0, Lcom/bytedance/sdk/component/utils/k$b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/k$b;-><init>(Lcom/bytedance/sdk/component/utils/k$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/k;->a:Lcom/bytedance/sdk/component/utils/k$a;

    goto :goto_16

    :cond_f
    new-instance v0, Lcom/bytedance/sdk/component/utils/k$a;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/utils/k$a;-><init>(Lcom/bytedance/sdk/component/utils/k$1;)V

    sput-object v0, Lcom/bytedance/sdk/component/utils/k;->a:Lcom/bytedance/sdk/component/utils/k$a;

    :goto_16
    return-void
.end method

.method public static a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/bytedance/sdk/component/utils/k;->a:Lcom/bytedance/sdk/component/utils/k$a;

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/component/utils/k$a;->a(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

###### Class com.bytedance.sdk.component.utils.k.AnonymousClass1 (com.bytedance.sdk.component.utils.k$1)
.class synthetic Lcom/bytedance/sdk/component/utils/k$1;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.bytedance.sdk.component.utils.k.a (com.bytedance.sdk.component.utils.k$a)
.class Lcom/bytedance/sdk/component/utils/k$a;
.super Ljava/lang/Object;
.source "LoadUrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/utils/k$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_6

    :catchall_6
    return-void
.end method

###### Class com.bytedance.sdk.component.utils.k.b (com.bytedance.sdk.component.utils.k$b)
.class Lcom/bytedance/sdk/component/utils/k$b;
.super Lcom/bytedance/sdk/component/utils/k$a;
.source "LoadUrlUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/utils/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/utils/k$a;-><init>(Lcom/bytedance/sdk/component/utils/k$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/utils/k$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/bytedance/sdk/component/utils/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 v0, 0x0

    if-eqz p2, :cond_17

    const-string v1, "javascript:"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    :try_start_f
    invoke-virtual {p1, p2, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_14

    const/4 v0, 0x1

    goto :goto_17

    :catchall_14
    move-exception v1

    instance-of v1, v1, Ljava/lang/IllegalStateException;

    :cond_17
    :goto_17
    if-nez v0, :cond_1c

    :try_start_19
    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_19 .. :try_end_1c} :catchall_1c

    :catchall_1c
    :cond_1c
    return-void
.end method
