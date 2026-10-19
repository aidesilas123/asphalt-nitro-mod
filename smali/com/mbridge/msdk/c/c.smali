###### Class com.mbridge.msdk.c.c (com.mbridge.msdk.c.c)
.class public final Lcom/mbridge/msdk/c/c;
.super Ljava/lang/Object;
.source "MBDNSManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/c/c$a;
    }
.end annotation


# instance fields
.field public a:I

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    const/4 v0, 0x6

    iput v0, p0, Lcom/mbridge/msdk/c/c;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/mbridge/msdk/c/c$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/mbridge/msdk/c/c;-><init>()V

    return-void
.end method

.method public static a()Lcom/mbridge/msdk/c/c;
    .registers 1

    invoke-static {}, Lcom/mbridge/msdk/c/c$a;->a()Lcom/mbridge/msdk/c/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    if-nez p1, :cond_17

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    :cond_17
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_1b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_40

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mbridge/msdk/c/d;

    invoke-direct {v3}, Lcom/mbridge/msdk/c/d;-><init>()V

    invoke-virtual {v3, v1}, Lcom/mbridge/msdk/c/d;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/c/d;->b(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_3b} :catch_3c

    goto :goto_1b

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_40
    return-void
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_35

    :cond_13
    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/c/d;

    if-eqz p1, :cond_35

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->b()I

    move-result v0

    iget v2, p0, Lcom/mbridge/msdk/c/c;->a:I

    if-lt v0, v2, :cond_26

    goto :goto_35

    :cond_26
    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/c/d;->a(Z)V

    :cond_34
    return-object v0

    :cond_35
    :goto_35
    return-object v1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_2d

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/c/d;

    if-eqz p1, :cond_2d

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->b()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/c/c;->a:I

    if-lt v0, v1, :cond_24

    goto :goto_2d

    :cond_24
    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/c/d;->a(I)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_28

    :cond_11
    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/c/d;

    if-eqz p1, :cond_28

    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->b()I

    move-result v0

    iget v1, p0, Lcom/mbridge/msdk/c/c;->a:I

    if-lt v0, v1, :cond_24

    goto :goto_28

    :cond_24
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mbridge/msdk/c/d;->a(I)V

    :cond_28
    :goto_28
    return-void
.end method

.method public final e(Ljava/lang/String;)I
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_34

    :cond_12
    iget-object v0, p0, Lcom/mbridge/msdk/c/c;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/c/d;

    if-nez p1, :cond_1d

    return v1

    :cond_1d
    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_30

    :cond_25
    invoke-virtual {p1}, Lcom/mbridge/msdk/c/d;->b()I

    move-result v0

    iget v2, p0, Lcom/mbridge/msdk/c/c;->a:I

    if-lt v0, v2, :cond_2f

    const/4 v0, 0x2

    goto :goto_30

    :cond_2f
    const/4 v0, 0x0

    :goto_30
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/c/d;->a(Z)V

    return v0

    :cond_34
    :goto_34
    return v1
.end method

###### Class com.mbridge.msdk.c.c.AnonymousClass1 (com.mbridge.msdk.c.c$1)
.class final synthetic Lcom/mbridge/msdk/c/c$1;
.super Ljava/lang/Object;
.source "MBDNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation

###### Class com.mbridge.msdk.c.c.a (com.mbridge.msdk.c.c$a)
.class final Lcom/mbridge/msdk/c/c$a;
.super Ljava/lang/Object;
.source "MBDNSManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mbridge/msdk/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/mbridge/msdk/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/mbridge/msdk/c/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/c/c;-><init>(Lcom/mbridge/msdk/c/c$1;)V

    sput-object v0, Lcom/mbridge/msdk/c/c$a;->a:Lcom/mbridge/msdk/c/c;

    return-void
.end method

.method static synthetic a()Lcom/mbridge/msdk/c/c;
    .registers 1

    sget-object v0, Lcom/mbridge/msdk/c/c$a;->a:Lcom/mbridge/msdk/c/c;

    return-object v0
.end method
