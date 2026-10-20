###### Class com.json.sdk.controller.t (com.ironsource.sdk.controller.t)
.class public Lcom/ironsource/sdk/controller/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/sdk/controller/k;
.implements Lcom/ironsource/fa;
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/sdk/controller/t$s;,
        Lcom/ironsource/sdk/controller/t$x;,
        Lcom/ironsource/sdk/controller/t$w;,
        Lcom/ironsource/sdk/controller/t$v;,
        Lcom/ironsource/sdk/controller/t$u;,
        Lcom/ironsource/sdk/controller/t$t;,
        Lcom/ironsource/sdk/controller/t$r;,
        Lcom/ironsource/sdk/controller/t$z;,
        Lcom/ironsource/sdk/controller/t$y;
    }
.end annotation


# static fields
.field public static Z:I = 0x0

.field private static a:Ljava/lang/String; = "success"

.field public static a0:Ljava/lang/String; = "is_store"

.field private static b:Ljava/lang/String; = "fail"

.field public static b0:Ljava/lang/String; = "external_url"

.field public static c0:Ljava/lang/String; = "secondary_web_view"


# instance fields
.field private A:Lcom/ironsource/y2;

.field private B:Lcom/ironsource/da;

.field private C:Lcom/ironsource/x2;

.field private D:Ljava/lang/String;

.field private E:Lcom/ironsource/sdk/controller/d;

.field private F:Lcom/ironsource/bd;

.field private G:Lcom/ironsource/f0;

.field private H:Ljava/lang/Object;

.field private I:Z

.field private J:Lcom/ironsource/k3;

.field private K:Lcom/ironsource/sdk/controller/n;

.field private L:Lcom/ironsource/sdk/controller/o;

.field private M:Lcom/ironsource/sdk/controller/s;

.field private N:Lcom/ironsource/sdk/controller/i;

.field private O:Lcom/ironsource/sdk/controller/a;

.field private P:Lcom/ironsource/sdk/controller/p;

.field private Q:Lcom/ironsource/nd;

.field private R:Lcom/ironsource/sdk/controller/g;

.field private S:Lcom/ironsource/i2;

.field private T:Lorg/json/JSONObject;

.field private U:Lcom/ironsource/sdk/controller/k$a;

.field private V:Lcom/ironsource/sdk/controller/k$b;

.field private final W:Lcom/ironsource/e5;

.field X:Lcom/ironsource/q2;

.field final Y:Lcom/ironsource/i8;

.field private final c:Lcom/ironsource/q5;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i0:Lcom/ironsource/ha;

.field private final j:Lcom/ironsource/s3;

.field private k:Z

.field private l:Lcom/ironsource/sdk/controller/t$s;

.field public m:Landroid/os/CountDownTimer;

.field private n:Z

.field private o:Landroid/os/CountDownTimer;

.field private p:I

.field private q:I

.field private r:Ljava/lang/String;

.field private final s:Lcom/ironsource/sdk/controller/t$r;

.field private t:Landroid/view/View;

.field private u:Landroid/widget/FrameLayout;

.field private v:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private w:Landroid/widget/FrameLayout;

.field private x:Lcom/ironsource/sdk/controller/t$x;

.field private y:Ljava/lang/String;

.field private z:Lcom/ironsource/z2;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ironsource/k3;Lcom/ironsource/q2;Lcom/ironsource/sdk/controller/g;Lcom/ironsource/q5;ILcom/ironsource/s3;Ljava/lang/String;Lcom/ironsource/sdk/controller/k$a;Lcom/ironsource/sdk/controller/k$b;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/ironsource/sdk/controller/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v0, "IronSource"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->e:Ljava/lang/String;

    const-string v0, "We\'re sorry, some error occurred. we will investigate it"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->f:Ljava/lang/String;

    const/16 v0, 0x32

    iput v0, p0, Lcom/ironsource/sdk/controller/t;->p:I

    iput v0, p0, Lcom/ironsource/sdk/controller/t;->q:I

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->r:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->H:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ironsource/sdk/controller/t;->I:Z

    invoke-static {}, Lcom/ironsource/e9;->h()Lcom/ironsource/l5;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/l5;->c()Lcom/ironsource/e5;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    new-instance v0, Lcom/ironsource/i8;

    new-instance v1, Lcom/ironsource/s8$a;

    invoke-direct {v1}, Lcom/ironsource/s8$a;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/ironsource/i8;-><init>(Landroid/content/Context;Lcom/ironsource/s8;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v2, "C\'tor"

    invoke-static {v1, v2}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t;->X:Lcom/ironsource/q2;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t;->R:Lcom/ironsource/sdk/controller/g;

    iput-object p5, p0, Lcom/ironsource/sdk/controller/t;->c:Lcom/ironsource/q5;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    invoke-direct {p0, p1, v0}, Lcom/ironsource/sdk/controller/t;->G(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object p8, p0, Lcom/ironsource/sdk/controller/t;->D:Ljava/lang/String;

    new-instance p2, Lcom/ironsource/f0;

    invoke-direct {p2}, Lcom/ironsource/f0;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->T:Lorg/json/JSONObject;

    iput-object p7, p0, Lcom/ironsource/sdk/controller/t;->j:Lcom/ironsource/s3;

    invoke-virtual {p7, p0}, Lcom/ironsource/s3;->a(Lcom/ironsource/fa;)V

    iput-object p9, p0, Lcom/ironsource/sdk/controller/t;->U:Lcom/ironsource/sdk/controller/k$a;

    iput-object p10, p0, Lcom/ironsource/sdk/controller/t;->V:Lcom/ironsource/sdk/controller/k$b;

    new-instance p2, Lcom/ironsource/sdk/controller/d;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getNetworkConfiguration()Lorg/json/JSONObject;

    move-result-object p3

    iget-object p4, p0, Lcom/ironsource/sdk/controller/t;->D:Ljava/lang/String;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object p5

    invoke-direct {p2, p3, p4, p5, p7}, Lcom/ironsource/sdk/controller/d;-><init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/s3;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    new-instance p2, Lcom/ironsource/sdk/controller/t$r;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/ironsource/sdk/controller/t$r;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/sdk/controller/t$i;)V

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->s:Lcom/ironsource/sdk/controller/t$r;

    new-instance p4, Lcom/ironsource/sdk/controller/t$z;

    invoke-direct {p4, p0, p3}, Lcom/ironsource/sdk/controller/t$z;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/sdk/controller/t$i;)V

    invoke-virtual {v0, p4}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-static {v0}, Lcom/ironsource/od;->a(Landroid/webkit/WebView;)V

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->H(Landroid/webkit/WebView;)V

    invoke-virtual {v0, p0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->h0(Landroid/content/Context;)Lcom/ironsource/i2;

    move-result-object p2

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->S:Lcom/ironsource/i2;

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/t;->b(Landroid/content/Context;)V

    invoke-virtual {p0, p6}, Lcom/ironsource/sdk/controller/t;->c(I)V

    iput-object p11, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p12, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    return-void
.end method

.method private A(Lcom/ironsource/h6$e;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "sessionDepth"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "demandSourceName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->fetchDemandSourceId(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    invoke-virtual {v3, p1, p2}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;Ljava/lang/String;)Lcom/ironsource/j3;

    move-result-object v3

    if-eqz v3, :cond_45

    invoke-virtual {v3}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v4

    if-eqz v4, :cond_31

    invoke-virtual {v3}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_31
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3a

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_45

    const-string v1, "demandSourceId"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_45
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->d0(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_4e

    invoke-interface {v0, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_4e
    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/ironsource/o2$g;->b(Lcom/ironsource/h6$e;)Lcom/ironsource/o2$g;

    move-result-object p1

    iget-object v0, p1, Lcom/ironsource/o2$g;->a:Ljava/lang/String;

    iget-object v1, p1, Lcom/ironsource/o2$g;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ironsource/o2$g;->c:Ljava/lang/String;

    invoke-direct {p0, v0, p2, v1, p1}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic A0(Lcom/ironsource/sdk/controller/t;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->u:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic B(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->x0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private B0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/ironsource/sdk/controller/l$a;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/l$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/l$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic C(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private C0(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->S:Lcom/ironsource/i2;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/ironsource/i2;->c(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method static synthetic D(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    invoke-direct/range {p0 .. p10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->Z0(Ljava/lang/String;)V

    return-void
.end method

.method private E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/ironsource/sdk/controller/l$a;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/l$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private E0(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0, p2}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    const-string p2, "errMsg"

    invoke-virtual {v0, p2}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_19

    new-instance v0, Lcom/ironsource/sdk/controller/t$e;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/t$e;-><init>(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->m0(Ljava/lang/Runnable;)V

    :cond_19
    return-void
.end method

.method private F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 13

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2b

    invoke-static {p4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3e

    invoke-static {p6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_51

    invoke-static {p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_51

    invoke-static {p8}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_51
    invoke-static {p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5f

    invoke-virtual {v0, p9, p10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_5a
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5a} :catch_5b

    goto :goto_5f

    :catch_5b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5f
    :goto_5f
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic F0(Lcom/ironsource/sdk/controller/t;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->v:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p0
.end method

.method private G(Landroid/content/Context;Landroid/webkit/WebView;)V
    .registers 7

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/t;->w:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/ironsource/sdk/controller/t;->u:Landroid/widget/FrameLayout;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t;->u:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->u:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->w:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->u:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->w:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private G0(Ljava/lang/String;)Lcom/ironsource/h6$e;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    return-object v0

    :cond_15
    sget-object v0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    return-object v0

    :cond_22
    sget-object v0, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    return-object v0

    :cond_2f
    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3c

    return-object v0

    :cond_3c
    return-object v1
.end method

.method private H(Landroid/webkit/WebView;)V
    .registers 5

    invoke-static {}, Lcom/ironsource/sdk/controller/u;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ironsource/sdk/controller/u;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/t;->s(Lcom/ironsource/sdk/controller/u;)Lcom/ironsource/sdk/controller/j;

    move-result-object v0

    const-string v2, "Android"

    invoke-virtual {p1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ironsource/sdk/controller/t;->Y(Lcom/ironsource/sdk/controller/u;)Lcom/ironsource/sdk/controller/q;

    move-result-object v0

    const-string v1, "GenerateTokenForMessaging"

    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic H0()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ironsource/sdk/controller/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic I0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->S0(Ljava/lang/String;)V

    return-void
.end method

.method private J(Lcom/ironsource/j3;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p1}, Lcom/ironsource/j3;->b()Ljava/util/Map;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p1}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/f0;->d(Ljava/lang/String;Z)V

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic J0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->r:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic K(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/sdk/controller/t;->O(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V

    return-void
.end method

.method private K0()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->i0:Lcom/ironsource/ha;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/ironsource/ha;->onCloseRequested()V

    :cond_7
    return-void
.end method

.method static synthetic L(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/t;->Q(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic L0(Lcom/ironsource/sdk/controller/t;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/t;->k:Z

    return p0
.end method

.method static synthetic M(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/webkit/WebView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/t;->R(Lorg/json/JSONObject;Landroid/webkit/WebView;)V

    return-void
.end method

.method static synthetic M0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/i2;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->S:Lcom/ironsource/i2;

    return-object p0
.end method

.method private N0(Ljava/lang/String;)V
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    new-instance v0, Lcom/ironsource/sdk/controller/b;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/b;-><init>(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->m0(Ljava/lang/Runnable;)V

    return-void
.end method

.method private O(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V
    .registers 5

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->b1(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/ironsource/sdk/controller/t$a;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/ironsource/sdk/controller/t$a;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->f0(Ljava/lang/Runnable;)V

    :cond_12
    return-void
.end method

.method static synthetic O0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/d;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    return-object p0
.end method

.method private P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_c

    const-string p1, "Application key are missing"

    invoke-interface {p4, p1, p2, p3}, Lcom/ironsource/sdk/controller/t$v;->a(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V

    return-void

    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/t;->u(Lcom/ironsource/h6$e;Lcom/ironsource/j3;)Lcom/ironsource/sdk/controller/t$w;

    move-result-object p1

    iget-object p1, p1, Lcom/ironsource/sdk/controller/t$w;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic P0(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    new-instance v1, Lcom/ironsource/sdk/controller/l$b;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/t;->k()I

    move-result v2

    invoke-direct {v1, p1, v2}, Lcom/ironsource/sdk/controller/l$b;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/l$b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ironsource/i8;->a(Ljava/lang/String;)V

    return-void
.end method

.method private Q(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 8

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0, p1}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/sdk/controller/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/ironsource/sdk/controller/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1a

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    goto :goto_23

    :cond_1a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_22

    move-object v1, v0

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5c

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_40

    :try_start_2f
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "errMsg"

    invoke-virtual {p2, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_2f .. :try_end_3e} :catch_3f

    goto :goto_40

    :catch_3f
    nop

    :cond_40
    :goto_40
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_55

    :try_start_46
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p3, "errCode"

    invoke-virtual {p2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_46 .. :try_end_55} :catch_55

    :catch_55
    :cond_55
    invoke-direct {p0, v1, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    :cond_5c
    return-void
.end method

.method static synthetic Q0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/s3;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->j:Lcom/ironsource/s3;

    return-object p0
.end method

.method private R(Lorg/json/JSONObject;Landroid/webkit/WebView;)V
    .registers 3

    const-string p2, "inspectWebview"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_12

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x13

    if-lt p1, p2, :cond_12

    const/4 p1, 0x1

    invoke-static {p1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_12
    return-void
.end method

.method static synthetic R0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/z2;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    return-object p0
.end method

.method static synthetic S(Lcom/ironsource/sdk/controller/t;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/t;->n:Z

    return p0
.end method

.method private S0(Ljava/lang/String;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1b
    .catchall {:try_start_0 .. :try_end_1b} :catchall_1c

    goto :goto_33

    :catchall_1c
    move-exception p1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewController::load: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_33
    return-void
.end method

.method static synthetic T(Lcom/ironsource/sdk/controller/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/t;->n:Z

    return p1
.end method

.method public static synthetic T0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->P0(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic U(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)[Ljava/lang/Object;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->u0(Landroid/content/Context;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic U0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/s;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->M:Lcom/ironsource/sdk/controller/s;

    return-object p0
.end method

.method static synthetic V(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/t;->v0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic V0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/p;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->P:Lcom/ironsource/sdk/controller/p;

    return-object p0
.end method

.method static synthetic W(Lcom/ironsource/sdk/controller/t;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/sdk/controller/t;->q:I

    return p1
.end method

.method private W0(Ljava/lang/String;)V
    .registers 3

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x2

    goto :goto_17

    :cond_10
    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, -0x1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    return-void
.end method

.method static synthetic X(Lcom/ironsource/sdk/controller/t;)Landroid/os/CountDownTimer;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->o:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic X0(Lcom/ironsource/sdk/controller/t;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ironsource/sdk/controller/t;->I:Z

    return p0
.end method

.method static synthetic Y0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/t$x;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->x:Lcom/ironsource/sdk/controller/t$x;

    return-object p0
.end method

.method static synthetic Z(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->s0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Z0(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0, p1}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    const-string p1, "color"

    invoke-virtual {v0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "adViewId"

    invoke-virtual {v0, v1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "transparent"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    goto :goto_1f

    :cond_1e
    const/4 p1, 0x0

    :goto_1f
    if-eqz v0, :cond_30

    invoke-static {}, Lcom/ironsource/g6;->a()Lcom/ironsource/g6;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/g6;->a(Ljava/lang/String;)Lcom/ironsource/y6;

    move-result-object v0

    invoke-interface {v0}, Lcom/ironsource/y6;->getPresentingView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_35

    goto :goto_32

    :cond_30
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    :goto_32
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_35
    return-void
.end method

.method static synthetic a(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a1(Lcom/ironsource/sdk/controller/t;)Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->w:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/x2;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->C:Lcom/ironsource/x2;

    return-object p0
.end method

.method private b0(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_21
    return-object p1
.end method

.method private b1(Ljava/lang/String;)Z
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v0, "Trying to trigger a listener - no product was found"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_f
    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->A:Lcom/ironsource/y2;

    if-eqz v0, :cond_5f

    goto :goto_5e

    :cond_20
    sget-object v0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    if-eqz v0, :cond_5f

    goto :goto_5e

    :cond_31
    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->C:Lcom/ironsource/x2;

    if-eqz v0, :cond_5f

    goto :goto_5e

    :cond_42
    sget-object v0, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5a

    sget-object v0, Lcom/ironsource/h6$e;->d:Lcom/ironsource/h6$e;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5a
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->B:Lcom/ironsource/da;

    if-eqz v0, :cond_5f

    :goto_5e
    const/4 v1, 0x1

    :cond_5f
    if-nez v1, :cond_77

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to trigger a listener - no listener was found for product "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/ironsource/sdk/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    return v1
.end method

.method static synthetic c(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/k$a;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->U:Lcom/ironsource/sdk/controller/k$a;

    return-object p0
.end method

.method private c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Lcom/ironsource/sdk/controller/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lcom/ironsource/sdk/controller/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/l$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/f0;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    return-object p0
.end method

.method static synthetic d(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/k$b;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->V:Lcom/ironsource/sdk/controller/k$b;

    return-object p0
.end method

.method private d0(Lcom/ironsource/h6$e;)Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/h6$e;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->i:Ljava/util/Map;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method static synthetic d1(Lcom/ironsource/sdk/controller/t;)V
    .registers 1

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/t;->K0()V

    return-void
.end method

.method static synthetic e(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/bd;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->F:Lcom/ironsource/bd;

    return-object p0
.end method

.method static synthetic e0(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->y0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic e1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/ha;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->i0:Lcom/ironsource/ha;

    return-object p0
.end method

.method static synthetic f(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/n;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->K:Lcom/ironsource/sdk/controller/n;

    return-object p0
.end method

.method static synthetic f1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/k3;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    return-object p0
.end method

.method static synthetic g(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/o;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->L:Lcom/ironsource/sdk/controller/o;

    return-object p0
.end method

.method static synthetic g0(Lcom/ironsource/sdk/controller/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/t;->k:Z

    return p1
.end method

.method static synthetic g1(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/i;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->N:Lcom/ironsource/sdk/controller/i;

    return-object p0
.end method

.method private h0(Landroid/content/Context;)Lcom/ironsource/i2;
    .registers 4

    new-instance v0, Lcom/ironsource/sdk/controller/t$i;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/ironsource/sdk/controller/t$i;-><init>(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/content/Context;)V

    return-object v0
.end method

.method static synthetic h1(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/a;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->O:Lcom/ironsource/sdk/controller/a;

    return-object p0
.end method

.method static synthetic i0(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/sdk/controller/g;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->R:Lcom/ironsource/sdk/controller/g;

    return-object p0
.end method

.method static synthetic i1(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/e5;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    return-object p0
.end method

.method private j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Lcom/ironsource/sdk/controller/l$a;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/sdk/controller/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/l$a;->a()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic j1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/da;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->B:Lcom/ironsource/da;

    return-object p0
.end method

.method static synthetic k(Lcom/ironsource/sdk/controller/t;)Lorg/json/JSONObject;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->T:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic k0(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->C0(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic k1(Lcom/ironsource/sdk/controller/t;)Lcom/ironsource/y2;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->A:Lcom/ironsource/y2;

    return-object p0
.end method

.method static synthetic l(Lcom/ironsource/sdk/controller/t;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/sdk/controller/t;->p:I

    return p0
.end method

.method static synthetic l0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/t;->E0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic m(Lcom/ironsource/sdk/controller/t;)I
    .registers 1

    iget p0, p0, Lcom/ironsource/sdk/controller/t;->q:I

    return p0
.end method

.method static synthetic n(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->r:Ljava/lang/String;

    return-object p0
.end method

.method private n0(Lorg/json/JSONObject;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "gpi"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/ja;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic o(Lcom/ironsource/sdk/controller/t;I)I
    .registers 2

    iput p1, p0, Lcom/ironsource/sdk/controller/t;->p:I

    return p1
.end method

.method static synthetic o0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->b1(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic p(Lcom/ironsource/sdk/controller/t;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->o:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic p0(Lcom/ironsource/sdk/controller/t;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/ironsource/sdk/controller/t;->I:Z

    return p1
.end method

.method static synthetic q(Lcom/ironsource/sdk/controller/t;Landroid/view/View;)Landroid/view/View;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->t:Landroid/view/View;

    return-object p1
.end method

.method static synthetic q0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)Lcom/ironsource/h6$e;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->G0(Ljava/lang/String;)Lcom/ironsource/h6$e;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcom/ironsource/sdk/controller/t;Landroid/webkit/WebChromeClient$CustomViewCallback;)Landroid/webkit/WebChromeClient$CustomViewCallback;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->v:Landroid/webkit/WebChromeClient$CustomViewCallback;

    return-object p1
.end method

.method static synthetic r0(Lcom/ironsource/sdk/controller/t;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->D:Ljava/lang/String;

    return-object p0
.end method

.method private s0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0, p1}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/sdk/controller/t;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic t(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/sdk/controller/t$s;)Lcom/ironsource/sdk/controller/t$s;
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->l:Lcom/ironsource/sdk/controller/t$s;

    return-object p1
.end method

.method private t0(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 10

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/n3;->b(Landroid/content/Context;)Lcom/ironsource/n3;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    const-string v5, "="

    if-nez v3, :cond_2b

    const-string v3, "SDKVersion"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2b
    invoke-virtual {v0}, Lcom/ironsource/n3;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_40

    const-string v2, "deviceOs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_40
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_de

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Landroid/net/Uri;->getPort()I

    move-result v0

    const/4 v7, -0x1

    if-eq v0, v7, :cond_7c

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_7c
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "protocol"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "domain"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    :try_start_a2
    new-instance v0, Lorg/json/JSONObject;

    const-string v2, "isSecured"

    const-string v3, "applicationKey"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v2}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONObject;[Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_cc

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "controllerConfig"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_c7
    .catch Lorg/json/JSONException; {:try_start_a2 .. :try_end_c7} :catch_c8

    goto :goto_cc

    :catch_c8
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_cc
    :goto_cc
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "debug"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/t;->k()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_de
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private u(Lcom/ironsource/h6$e;Lcom/ironsource/j3;)Lcom/ironsource/sdk/controller/t$w;
    .registers 15

    new-instance v0, Lcom/ironsource/sdk/controller/t$w;

    invoke-direct {v0}, Lcom/ironsource/sdk/controller/t$w;-><init>()V

    sget-object v1, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    if-eq p1, v1, :cond_3e

    sget-object v1, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    if-ne p1, v1, :cond_16

    goto :goto_3e

    :cond_16
    sget-object p2, Lcom/ironsource/h6$e;->d:Lcom/ironsource/h6$e;

    if-ne p1, p2, :cond_ae

    iget-object v5, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "productType"

    const-string v3, "OfferWall"

    const-string v4, "applicationKey"

    const-string v6, "applicationUserId"

    move-object v1, p0

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "getUserCredits"

    const-string v1, "null"

    const-string v2, "onGetUserCreditsFail"

    invoke-direct {p0, p2, p1, v1, v2}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p2, v0, Lcom/ironsource/sdk/controller/t$w;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/t$w;->b:Ljava/lang/String;

    goto :goto_ae

    :cond_3e
    :goto_3e
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    const-string v3, "applicationKey"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_59

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    const-string v3, "applicationUserId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_59
    if-eqz p2, :cond_8d

    invoke-virtual {p2}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_7b

    invoke-virtual {p2}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v2, Lcom/ironsource/j;->a:Lcom/ironsource/j;

    invoke-virtual {p2}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ironsource/j;->c(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "loadStartTime"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7b
    invoke-virtual {p2}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "demandSourceName"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object p2

    const-string v2, "demandSourceId"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8d
    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->d0(Lcom/ironsource/h6$e;)Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_96

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_96
    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/ironsource/o2$g;->a(Lcom/ironsource/h6$e;)Lcom/ironsource/o2$g;

    move-result-object p1

    iget-object v1, p1, Lcom/ironsource/o2$g;->a:Ljava/lang/String;

    iget-object v2, p1, Lcom/ironsource/o2$g;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/ironsource/o2$g;->c:Ljava/lang/String;

    invoke-direct {p0, v1, p2, v2, v3}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object p1, p1, Lcom/ironsource/o2$g;->a:Ljava/lang/String;

    iput-object p1, v0, Lcom/ironsource/sdk/controller/t$w;->a:Ljava/lang/String;

    iput-object p2, v0, Lcom/ironsource/sdk/controller/t$w;->b:Ljava/lang/String;

    :cond_ae
    :goto_ae
    return-object v0
.end method

.method private u0(Landroid/content/Context;)[Ljava/lang/Object;
    .registers 13

    const-string v0, "none"

    invoke-static {p1}, Lcom/ironsource/n3;->b(Landroid/content/Context;)Lcom/ironsource/n3;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_d
    const-string v5, "appOrientation"

    invoke-virtual {v2, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "deviceOrientation"

    iget-object v6, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v6, p1}, Lcom/ironsource/e5;->E(Landroid/content/Context;)I

    move-result v6

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->translateDeviceOrientation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lcom/ironsource/n3;->d()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    const-string v6, "deviceOEM"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_34
    invoke-virtual {v1}, Lcom/ironsource/n3;->c()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_49

    const-string v6, "deviceModel"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_47} :catch_31f

    const/4 v5, 0x0

    goto :goto_4a

    :cond_49
    const/4 v5, 0x1

    :goto_4a
    :try_start_4a
    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->loadGoogleAdvertiserInfo(Landroid/content/Context;)V

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getAdvertiserId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_55
    .catch Lorg/json/JSONException; {:try_start_4a .. :try_end_55} :catch_31d

    const-string v8, "]"

    const-string v9, "["

    if-nez v7, :cond_82

    :try_start_5b
    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v10, "add AID"

    invoke-static {v7, v10}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceIds"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "AID"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_82
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getLimitAdTracking()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9c

    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v10, "add LAT"

    invoke-static {v7, v10}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "isLimitAdTrackingEnabled"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_9c
    invoke-virtual {v1}, Lcom/ironsource/n3;->e()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b0

    const-string v7, "deviceOs"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_b1

    :cond_b0
    const/4 v5, 0x1

    :goto_b1
    invoke-virtual {v1}, Lcom/ironsource/n3;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_c9

    const-string v7, "[^0-9/.]"

    const-string v10, ""

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "deviceOSVersion"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_ca

    :cond_c9
    const/4 v5, 0x1

    :goto_ca
    invoke-virtual {v1}, Lcom/ironsource/n3;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_dd

    const-string v7, "deviceOSVersionFull"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_dd
    invoke-virtual {v1}, Lcom/ironsource/n3;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f1

    const-string v7, "deviceApiLevel"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_f2

    :cond_f1
    const/4 v5, 0x1

    :goto_f2
    invoke-static {}, Lcom/ironsource/o;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "asel"

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_112

    const-string v7, "SDKVersion"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_112
    invoke-virtual {v1}, Lcom/ironsource/n3;->b()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_133

    invoke-virtual {v1}, Lcom/ironsource/n3;->b()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_133

    const-string v6, "mobileCarrier"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/ironsource/n3;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_133
    invoke-static {p1}, Lcom/ironsource/l2;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14b

    const-string v0, "connectionType"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_14c

    :cond_14b
    const/4 v5, 0x1

    :goto_14c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_15f

    const-string v0, "hasVPN"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/l2;->d(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    :cond_15f
    const-string v0, "uxt"

    invoke-static {}, Lcom/ironsource/sdk/utils/IronSourceStorageUtils;->isUxt()Z

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_18d

    const-string v1, "deviceLanguage"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_18d
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->isExternalStorageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1ad

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->D:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/ironsource/e5;->a(Ljava/lang/String;)J

    move-result-wide v0

    const-string v6, "diskFreeSize"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1ae

    :cond_1ad
    const/4 v5, 0x1

    :goto_1ae
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->r()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1bc
    .catch Lorg/json/JSONException; {:try_start_5b .. :try_end_1bc} :catch_31d

    const-string v6, "deviceScreenSize"

    if-nez v1, :cond_1e7

    :try_start_1c0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "width"

    invoke-static {v7}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1e8

    :cond_1e7
    const/4 v5, 0x1

    :goto_1e8
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "height"

    invoke-static {v6}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/k0;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_235

    const-string v1, "bundleId"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_235
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->h()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_252

    const-string v1, "deviceScreenScale"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_252
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v0}, Lcom/ironsource/e5;->f()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_26f

    const-string v1, "unLocked"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_26f
    invoke-static {p1}, Lcom/ironsource/n3;->b(Landroid/content/Context;)Lcom/ironsource/n3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/n3;->a(Landroid/content/Context;)F

    move-result v0

    const-string v1, "deviceVolume"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    float-to-double v6, v0

    invoke-virtual {v2, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "batteryLevel"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v1, p1}, Lcom/ironsource/e5;->w(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mcc"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k2;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "mnc"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k2;->c(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "phoneType"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k2;->e(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "simOperator"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k2;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lastUpdateTime"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k0;->f(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "firstInstallTime"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k0;->d(Landroid/content/Context;)J

    move-result-wide v6

    invoke-virtual {v2, v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v0, "appVersion"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/ironsource/k0;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/ironsource/k0;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_30a

    const-string v1, "installerPackageName"

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30a
    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/t;->n0(Lorg/json/JSONObject;)V

    const-string v0, "screenBrightness"

    invoke-static {v0}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->W:Lcom/ironsource/e5;

    invoke-interface {v1, p1}, Lcom/ironsource/e5;->z(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {v2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_31c
    .catch Lorg/json/JSONException; {:try_start_1c0 .. :try_end_31c} :catch_31d

    goto :goto_324

    :catch_31d
    move-exception p1

    goto :goto_321

    :catch_31f
    move-exception p1

    const/4 v5, 0x0

    :goto_321
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_324
    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v3

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, p1, v4

    return-object p1
.end method

.method private v(Lcom/ironsource/h6$e;)Lcom/ironsource/w2;
    .registers 3

    sget-object v0, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->A:Lcom/ironsource/y2;

    return-object p1

    :cond_7
    sget-object v0, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    if-ne p1, v0, :cond_e

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    return-object p1

    :cond_e
    sget-object v0, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    if-ne p1, v0, :cond_15

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->C:Lcom/ironsource/x2;

    return-object p1

    :cond_15
    const/4 p1, 0x0

    return-object p1
.end method

.method private v0(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .registers 9

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_57

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->G0(Ljava/lang/String;)Lcom/ironsource/h6$e;

    move-result-object v1

    sget-object v5, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    if-ne v1, v5, :cond_19

    iget-object v4, p0, Lcom/ironsource/sdk/controller/t;->i:Ljava/util/Map;

    goto :goto_37

    :cond_19
    iget-object v5, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    invoke-virtual {v5, v1, p2}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;Ljava/lang/String;)Lcom/ironsource/j3;

    move-result-object p2

    if-eqz p2, :cond_37

    invoke-virtual {p2}, Lcom/ironsource/j3;->g()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {p2}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object v1

    const-string v5, "demandSourceName"

    invoke-interface {v4, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ironsource/j3;->h()Ljava/lang/String;

    move-result-object p2

    const-string v1, "demandSourceId"

    invoke-interface {v4, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_37
    :goto_37
    :try_start_37
    const-string p2, "productType"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_37 .. :try_end_3c} :catch_3d

    goto :goto_41

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_41
    :try_start_41
    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_55

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-static {v0, p2}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeJSONObjects(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_50} :catch_51

    goto :goto_55

    :catch_51
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_55
    :goto_55
    const/4 p1, 0x0

    goto :goto_58

    :cond_57
    const/4 p1, 0x1

    :goto_58
    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_74

    :try_start_60
    const-string p2, "applicationUserId"

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_60 .. :try_end_6f} :catch_70

    goto :goto_74

    :catch_70
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_74
    :goto_74
    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_91

    :try_start_7c
    const-string p2, "applicationKey"

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_7c .. :try_end_8b} :catch_8c

    goto :goto_92

    :catch_8c
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_92

    :cond_91
    const/4 p1, 0x1

    :goto_92
    if-eqz v4, :cond_e2

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_e2

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_a2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "sdkWebViewCache"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/ironsource/sdk/controller/t;->W0(Ljava/lang/String;)V

    :cond_c5
    :try_start_c5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/ironsource/sdk/utils/SDKUtils;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_dc
    .catch Lorg/json/JSONException; {:try_start_c5 .. :try_end_dc} :catch_dd

    goto :goto_a2

    :catch_dd
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a2

    :cond_e2
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, p2, v3

    return-object p2
.end method

.method static synthetic w(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;)Lcom/ironsource/w2;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->v(Lcom/ironsource/h6$e;)Lcom/ironsource/w2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w0(Lcom/ironsource/sdk/controller/t;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/ironsource/sdk/controller/t;->t:Landroid/view/View;

    return-object p0
.end method

.method private x0(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Lcom/ironsource/hb;

    invoke-direct {v0, p1}, Lcom/ironsource/hb;-><init>(Ljava/lang/String;)V

    sget-object p1, Lcom/ironsource/sdk/controller/t;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ironsource/hb;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private y0(Landroid/content/Context;)V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->S:Lcom/ironsource/i2;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {v0, p1}, Lcom/ironsource/i2;->b(Landroid/content/Context;)V
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_d

    :catchall_9
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_d
    return-void
.end method

.method static synthetic z()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ironsource/sdk/controller/t;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z0(Lcom/ironsource/sdk/controller/t;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method I(Lcom/ironsource/h6$e;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/ironsource/sdk/controller/t$h;

    invoke-direct {v0, p0, p1, p2}, Lcom/ironsource/sdk/controller/t$h;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/h6$e;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->f0(Ljava/lang/Runnable;)V

    return-void
.end method

.method N(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->c:Lcom/ironsource/q5;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/ironsource/q5;->a(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method Y(Lcom/ironsource/sdk/controller/u;)Lcom/ironsource/sdk/controller/q;
    .registers 3

    new-instance v0, Lcom/ironsource/sdk/controller/q;

    invoke-direct {v0, p1}, Lcom/ironsource/sdk/controller/q;-><init>(Lcom/ironsource/sdk/controller/u;)V

    return-object v0
.end method

.method public a(I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ironsource/sdk/controller/t;->b(I)V

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->X:Lcom/ironsource/q2;

    invoke-virtual {v0, p1}, Lcom/ironsource/q2;->a(Landroid/app/Activity;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/ironsource/sdk/controller/t$g;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/t$g;-><init>(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->N(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Lcom/ironsource/bd;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->F:Lcom/ironsource/bd;

    return-void
.end method

.method public a(Lcom/ironsource/f0;)V
    .registers 12

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->H:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Lcom/ironsource/f0;->m()Z

    move-result v1

    if-eqz v1, :cond_15e

    iget-boolean v1, p0, Lcom/ironsource/sdk/controller/t;->k:Z

    if-eqz v1, :cond_15e

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreState(state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ironsource/f0;->c()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_90

    sget-object v3, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_4f

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v4, "onRVAdClosed()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ironsource/f0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/t;->v(Lcom/ironsource/h6$e;)Lcom/ironsource/w2;

    move-result-object v4

    if-eqz v4, :cond_88

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    goto :goto_6e

    :cond_4f
    sget-object v3, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne v1, v4, :cond_72

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v4, "onInterstitialAdClosed()"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/ironsource/f0;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v3}, Lcom/ironsource/sdk/controller/t;->v(Lcom/ironsource/h6$e;)Lcom/ironsource/w2;

    move-result-object v4

    if-eqz v4, :cond_88

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_88

    :goto_6e
    invoke-interface {v4, v3, v1}, Lcom/ironsource/w2;->a(Lcom/ironsource/h6$e;Ljava/lang/String;)V

    goto :goto_88

    :cond_72
    sget-object v3, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-ne v1, v3, :cond_88

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v3, "onOWAdClosed()"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->B:Lcom/ironsource/da;

    if-eqz v1, :cond_88

    invoke-interface {v1}, Lcom/ironsource/da;->onOWAdClosed()V

    :cond_88
    :goto_88
    invoke-virtual {p1, v2}, Lcom/ironsource/f0;->a(I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ironsource/f0;->f(Ljava/lang/String;)V

    goto :goto_97

    :cond_90
    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v2, "No ad was opened"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_97
    invoke-virtual {p1}, Lcom/ironsource/f0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/f0;->f()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    sget-object v4, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v3, v4}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_ab
    :goto_ab
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_f3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/j3;

    invoke-virtual {v4}, Lcom/ironsource/j3;->e()I

    move-result v6

    if-ne v6, v5, :cond_ab

    iget-object v5, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initInterstitial(appKey:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", userId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", demandSource:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/ironsource/sdk/controller/t;->A:Lcom/ironsource/y2;

    invoke-virtual {p0, v1, v2, v4, v5}, Lcom/ironsource/sdk/controller/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/y2;)V

    goto :goto_ab

    :cond_f3
    invoke-virtual {p1}, Lcom/ironsource/f0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ironsource/f0;->j()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    sget-object v4, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-virtual {v3, v4}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_107
    :goto_107
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_15a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ironsource/j3;

    invoke-virtual {v4}, Lcom/ironsource/j3;->e()I

    move-result v6

    if-ne v6, v5, :cond_107

    invoke-virtual {v4}, Lcom/ironsource/j3;->f()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v8, "onRVNoMoreOffers()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    invoke-interface {v7, v6}, Lcom/ironsource/z2;->d(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "initRewardedVideo(appKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", userId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", demandSource:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    invoke-virtual {p0, v1, v2, v4, v6}, Lcom/ironsource/sdk/controller/t;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/z2;)V

    goto :goto_107

    :cond_15a
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/ironsource/f0;->c(Z)V

    :cond_15e
    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    monitor-exit v0

    return-void

    :catchall_162
    move-exception p1

    monitor-exit v0
    :try_end_164
    .catchall {:try_start_3 .. :try_end_164} :catchall_162

    throw p1
.end method

.method public a(Lcom/ironsource/ha;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->i0:Lcom/ironsource/ha;

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0, p1}, Lcom/ironsource/i8;->a(Lcom/ironsource/ha;)V

    return-void
.end method

.method public a(Lcom/ironsource/j3;)V
    .registers 5

    invoke-virtual {p1}, Lcom/ironsource/j3;->b()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "destroyBanner"

    const-string v1, "onDestroyBannersSuccess"

    const-string v2, "onDestroyBannersFail"

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/x2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/x2;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1}, Lcom/ironsource/j3;->b()Ljava/util/Map;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    if-eqz p2, :cond_24

    invoke-static {p1}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadBanner"

    const-string p3, "onLoadBannerSuccess"

    const-string v0, "onLoadBannerFail"

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public a(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/util/Map;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p1}, Lcom/ironsource/j3;->b()Ljava/util/Map;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p3, p2

    invoke-static {p3}, Lcom/ironsource/sdk/utils/SDKUtils;->mergeHashMaps([Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    sget-object p2, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, p2, p3}, Lcom/ironsource/sdk/controller/t;->A(Lcom/ironsource/h6$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/q6;)V
    .registers 4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    new-instance v0, Lcom/ironsource/sdk/controller/t$b;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/t$b;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/d;->f(Ljava/lang/Runnable;)V

    goto :goto_22

    :cond_17
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_22
    return-void
.end method

.method public a(Lcom/ironsource/q6;Lcom/ironsource/i6;)V
    .registers 5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobileController.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    new-instance v0, Lcom/ironsource/sdk/controller/t$c;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/t$c;-><init>(Lcom/ironsource/sdk/controller/t;)V

    new-instance v1, Lcom/ironsource/sdk/controller/t$d;

    invoke-direct {v1, p0, p2}, Lcom/ironsource/sdk/controller/t$d;-><init>(Lcom/ironsource/sdk/controller/t;Lcom/ironsource/i6;)V

    invoke-virtual {p1, v0, v1}, Lcom/ironsource/sdk/controller/d;->g(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_2b

    :cond_1c
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/ironsource/i6;->b()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/ironsource/sdk/controller/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2b
    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/a;)V
    .registers 3

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->O:Lcom/ironsource/sdk/controller/a;

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/t;->i()Lcom/ironsource/nd;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/ironsource/sdk/controller/a;->a(Lcom/ironsource/nd;)V

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/f$c;Lcom/ironsource/sdk/controller/k$a;)V
    .registers 4

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$c;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/ironsource/sdk/controller/f$c;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onReceivedMessage"

    invoke-direct {p0, p2, p1, v0, v0}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/i;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->N:Lcom/ironsource/sdk/controller/i;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/n;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->K:Lcom/ironsource/sdk/controller/n;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/o;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->L:Lcom/ironsource/sdk/controller/o;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/p;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->P:Lcom/ironsource/sdk/controller/p;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/s;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->M:Lcom/ironsource/sdk/controller/s;

    return-void
.end method

.method public a(Lcom/ironsource/sdk/controller/t$x;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->x:Lcom/ironsource/sdk/controller/t$x;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/ironsource/y2;)V
    .registers 5

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "demandSourceName"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/ironsource/sdk/utils/SDKUtils;->flatMapToJsonAsString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/f0;->d(Ljava/lang/String;Z)V

    const-string p1, "loadInterstitial"

    const-string v0, "onLoadInterstitialSuccess"

    const-string v1, "onLoadInterstitialFail"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/t;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "file"

    const-string v3, "path"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "assetCached"

    invoke-direct {p0, v1, v0}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_26

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_26
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/da;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t;->B:Lcom/ironsource/da;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_15

    sget-object p1, Lcom/ironsource/h6$e;->d:Lcom/ironsource/h6$e;

    const-string p3, "UserId missing"

    invoke-direct {p0, p3, p1, p2}, Lcom/ironsource/sdk/controller/t;->O(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V

    return-void

    :cond_15
    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    sget-object p3, Lcom/ironsource/h6$e;->d:Lcom/ironsource/h6$e;

    new-instance v0, Lcom/ironsource/sdk/controller/t$p;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/t$p;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/ironsource/sdk/controller/t;->P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/x2;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t;->C:Lcom/ironsource/x2;

    sget-object p2, Lcom/ironsource/h6$e;->a:Lcom/ironsource/h6$e;

    new-instance p4, Lcom/ironsource/sdk/controller/t$q;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/t$q;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/t;->P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/y2;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t;->A:Lcom/ironsource/y2;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p2, p1}, Lcom/ironsource/f0;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/ironsource/f0;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    sget-object p2, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    new-instance p4, Lcom/ironsource/sdk/controller/t$n;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/t$n;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/t;->P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/j3;Lcom/ironsource/z2;)V
    .registers 5

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t;->z:Lcom/ironsource/z2;

    iget-object p4, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p4, p1}, Lcom/ironsource/f0;->i(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p4, p2}, Lcom/ironsource/f0;->j(Ljava/lang/String;)V

    sget-object p2, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    new-instance p4, Lcom/ironsource/sdk/controller/t$m;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/t$m;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ironsource/sdk/controller/t;->P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    :try_start_0
    invoke-direct {p0, p2}, Lcom/ironsource/sdk/controller/t;->b0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "file"

    const-string v3, "path"

    const-string v5, "errMsg"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "assetCachedFailed"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1e

    :catch_1e
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/da;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/t;->h:Ljava/lang/String;

    iput-object p3, p0, Lcom/ironsource/sdk/controller/t;->i:Ljava/util/Map;

    iput-object p4, p0, Lcom/ironsource/sdk/controller/t;->B:Lcom/ironsource/da;

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p1, p3}, Lcom/ironsource/f0;->b(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/ironsource/f0;->b(Z)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_22

    sget-object p1, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    const-string p3, "UserId missing"

    invoke-direct {p0, p3, p1, p2}, Lcom/ironsource/sdk/controller/t;->O(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;)V

    return-void

    :cond_22
    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->g:Ljava/lang/String;

    sget-object p3, Lcom/ironsource/h6$e;->b:Lcom/ironsource/h6$e;

    new-instance p4, Lcom/ironsource/sdk/controller/t$o;

    invoke-direct {p4, p0}, Lcom/ironsource/sdk/controller/t$o;-><init>(Lcom/ironsource/sdk/controller/t;)V

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/ironsource/sdk/controller/t;->P(Ljava/lang/String;Lcom/ironsource/h6$e;Lcom/ironsource/j3;Lcom/ironsource/sdk/controller/t$v;)V

    return-void
.end method

.method public a(Ljava/util/Map;Lcom/ironsource/da;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/da;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->i:Ljava/util/Map;

    const-string p1, "showOfferWall"

    const-string p2, "onShowOfferWallSuccess"

    const-string v0, "onShowOfferWallFail"

    invoke-direct {p0, p1, p2, v0}, Lcom/ironsource/sdk/controller/t;->c0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .registers 3

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const-string v0, "updateConsentInfo"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/x2;)V
    .registers 5

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "loadBanner"

    const-string v0, "onLoadBannerSuccess"

    const-string v1, "onLoadBannerFail"

    invoke-direct {p0, p2, p1, v0, v1}, Lcom/ironsource/sdk/controller/t;->E(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/y2;)V
    .registers 3

    sget-object p2, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->A(Lcom/ironsource/h6$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;Lcom/ironsource/z2;)V
    .registers 3

    sget-object p2, Lcom/ironsource/h6$e;->e:Lcom/ironsource/h6$e;

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->A(Lcom/ironsource/h6$e;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .registers 14

    const-string v1, "webview"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "isViewable"

    move-object v0, p0

    move-object v2, p2

    move v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "viewableChange"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->J:Lcom/ironsource/k3;

    sget-object v1, Lcom/ironsource/h6$e;->c:Lcom/ironsource/h6$e;

    invoke-virtual {v0, v1, p1}, Lcom/ironsource/k3;->a(Lcom/ironsource/h6$e;Ljava/lang/String;)Lcom/ironsource/j3;

    move-result-object p1

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/ironsource/j3;->d()Z

    move-result p1

    if-eqz p1, :cond_12

    const/4 p1, 0x1

    goto :goto_13

    :cond_12
    const/4 p1, 0x0

    :goto_13
    return p1
.end method

.method public b()V
    .registers 2

    const-string v0, "enterBackground"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public b(I)V
    .registers 14

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/d;->u()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getControllerConfigAsJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->t0(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ironsource/sdk/utils/SDKUtils;->getInitSDKParams()Ljava/util/Map;

    move-result-object v2

    if-eqz v2, :cond_31

    const-string v3, "sessionid"

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_31

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v4, v2

    const-string v1, "%s&sessionid=%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_31
    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v2}, Lcom/ironsource/sdk/controller/d;->o()Lcom/ironsource/q6;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "?"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    iget-object v3, p0, Lcom/ironsource/sdk/controller/t;->c:Lcom/ironsource/q5;

    new-instance v4, Lcom/ironsource/sdk/controller/t$k;

    invoke-direct {v4, p0, v0, v2, v1}, Lcom/ironsource/sdk/controller/t$k;-><init>(Lcom/ironsource/sdk/controller/t;Lorg/json/JSONObject;Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/ironsource/sdk/controller/t$l;

    const-wide/32 v7, 0xc350

    const-wide/16 v9, 0x3e8

    move-object v5, v0

    move-object v6, p0

    move v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/ironsource/sdk/controller/t$l;-><init>(Lcom/ironsource/sdk/controller/t;JJI)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->m:Landroid/os/CountDownTimer;

    goto :goto_7a

    :cond_73
    iget-object p1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    const-string v0, "load(): Mobile Controller HTML Does not exist"

    invoke-static {p1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7a
    return-void
.end method

.method public b(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/ironsource/sdk/controller/t$f;

    invoke-direct {v0, p0, p1}, Lcom/ironsource/sdk/controller/t$f;-><init>(Lcom/ironsource/sdk/controller/t;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->N(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/ironsource/j3;Ljava/util/Map;Lcom/ironsource/y2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/j3;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ironsource/y2;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ironsource/sdk/controller/t;->J(Lcom/ironsource/j3;Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p2, "unknown url"

    :cond_8
    move-object v4, p2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_11

    const-string p1, "activity failed to open with unspecified reason"

    :cond_11
    move-object v2, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v1, "errMsg"

    const-string v3, "url"

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "failedToStartStoreActivity"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public b(Lorg/json/JSONObject;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->T:Lorg/json/JSONObject;

    :cond_4
    return-void
.end method

.method public c()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->a(Lcom/ironsource/f0;)V

    return-void
.end method

.method public c(I)V
    .registers 2

    sput p1, Lcom/ironsource/sdk/controller/t;->Z:I

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 14

    const-string v0, "forceClose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/ironsource/sdk/controller/t;->K0()V

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v2, "action"

    move-object v1, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "engageEnd"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .registers 2

    const-string v0, "enterForeground"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->j:Lcom/ironsource/s3;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/ironsource/s3;->d()V

    :cond_c
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->S:Lcom/ironsource/i2;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/ironsource/i2;->b()V

    :cond_13
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->m:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_1a
    return-void
.end method

.method public e()Lcom/ironsource/h6$c;
    .registers 2

    sget-object v0, Lcom/ironsource/h6$c;->a:Lcom/ironsource/h6$c;

    return-object v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v1, "lifeCycleEvent"

    const-string v3, "productType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onNativeLifeCycleEvent"

    invoke-direct {p0, p2, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public e(Lorg/json/JSONObject;)V
    .registers 15

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device connection info changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v3, "connectionInfo"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "connectionInfoChanged"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public f()V
    .registers 3

    new-instance v0, Lcom/ironsource/j6;

    invoke-direct {v0}, Lcom/ironsource/j6;-><init>()V

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v1, v0}, Lcom/ironsource/sdk/controller/d;->c(Lcom/ironsource/j6;)V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->E:Lcom/ironsource/sdk/controller/d;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/d;->s()Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ironsource/sdk/controller/t;->a(I)V

    :cond_16
    return-void
.end method

.method f0(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->c:Lcom/ironsource/q5;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/ironsource/q5;->b(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public h(Ljava/lang/String;)Z
    .registers 4

    invoke-static {}, Lcom/ironsource/g8;->e()Lcom/ironsource/g8;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/g8;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_33

    :try_start_a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p0}, Lcom/ironsource/sdk/controller/t;->j()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/ironsource/wc;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_2f

    const/4 p1, 0x1

    return p1

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_33
    const/4 p1, 0x0

    return p1
.end method

.method public i()Lcom/ironsource/nd;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Q:Lcom/ironsource/nd;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ironsource/sdk/controller/t$j;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/t$j;-><init>(Lcom/ironsource/sdk/controller/t;)V

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->Q:Lcom/ironsource/nd;

    :cond_b
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Q:Lcom/ironsource/nd;

    return-object v0
.end method

.method public j()Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->X:Lcom/ironsource/q2;

    invoke-virtual {v0}, Lcom/ironsource/q2;->a()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public k()I
    .registers 2

    sget v0, Lcom/ironsource/sdk/controller/t;->Z:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 13

    const-string v1, "action"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v10}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "nativeNavigationPressed"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public l()Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->w:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->y:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 15

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device status changed, connection type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ironsource/m6;->a(Ljava/lang/String;)V

    const-string v3, "connectionType"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v2 .. v12}, Lcom/ironsource/sdk/controller/t;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    const-string v0, "deviceStatusChanged"

    invoke-direct {p0, v0, p1}, Lcom/ironsource/sdk/controller/t;->j0(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method m0(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->c:Lcom/ironsource/q5;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/ironsource/q5;->c(Ljava/lang/Runnable;)V

    :cond_7
    return-void
.end method

.method public n()Lcom/ironsource/f0;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->G:Lcom/ironsource/f0;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ironsource/sdk/controller/t;->y:Ljava/lang/String;

    return-void
.end method

.method public o()Lcom/ironsource/sdk/controller/t$x;
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->x:Lcom/ironsource/sdk/controller/t$x;

    return-object v0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 7

    iget-object p2, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p()V
    .registers 4

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->l:Lcom/ironsource/sdk/controller/t$s;

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-direct {p0}, Lcom/ironsource/sdk/controller/t;->K0()V

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->l:Lcom/ironsource/sdk/controller/t$s;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/t$s;->b()Lcom/ironsource/h6$e;

    move-result-object v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->l:Lcom/ironsource/sdk/controller/t$s;

    invoke-virtual {v1}, Lcom/ironsource/sdk/controller/t$s;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ironsource/sdk/controller/t;->b1(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-virtual {p0, v0, v1}, Lcom/ironsource/sdk/controller/t;->I(Lcom/ironsource/h6$e;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public q()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->s:Lcom/ironsource/sdk/controller/t$r;

    invoke-virtual {v0}, Lcom/ironsource/sdk/controller/t$r;->onHideCustomView()V

    return-void
.end method

.method public r()Z
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->t:Landroid/view/View;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method s(Lcom/ironsource/sdk/controller/u;)Lcom/ironsource/sdk/controller/j;
    .registers 4

    new-instance v0, Lcom/ironsource/sdk/controller/t$u;

    invoke-direct {v0, p0}, Lcom/ironsource/sdk/controller/t$u;-><init>(Lcom/ironsource/sdk/controller/t;)V

    new-instance v1, Lcom/ironsource/sdk/controller/c;

    invoke-direct {v1, v0}, Lcom/ironsource/sdk/controller/c;-><init>(Lcom/ironsource/sdk/controller/t$u;)V

    new-instance v0, Lcom/ironsource/sdk/controller/j;

    invoke-direct {v0, v1, p1}, Lcom/ironsource/sdk/controller/j;-><init>(Lcom/ironsource/sdk/controller/c;Lcom/ironsource/sdk/controller/u;)V

    return-object v0
.end method

.method public s()V
    .registers 2

    const-string v0, "interceptedUrlToStore"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public t()V
    .registers 2

    const-string v0, "pageFinished"

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->B0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ironsource/sdk/controller/t;->N0(Ljava/lang/String;)V

    return-void
.end method

.method public u()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPause()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_1d

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onPause() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public v()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->F:Lcom/ironsource/bd;

    return-void
.end method

.method public w()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/sdk/controller/t;->i0:Lcom/ironsource/ha;

    return-void
.end method

.method public x()V
    .registers 2

    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public y()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ironsource/sdk/controller/t;->Y:Lcom/ironsource/i8;

    invoke-virtual {v0}, Landroid/webkit/WebView;->onResume()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_1d

    :catchall_6
    move-exception v0

    iget-object v1, p0, Lcom/ironsource/sdk/controller/t;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WebViewController: onResume() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ironsource/sdk/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method
