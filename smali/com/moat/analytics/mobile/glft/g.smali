###### Class com.moat.analytics.mobile.glft.g (com.moat.analytics.mobile.glft.g)
.class abstract Lcom/moat/analytics/mobile/glft/g;
.super Lcom/moat/analytics/mobile/glft/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moat/analytics/mobile/glft/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PlayerOrIMAAd:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/moat/analytics/mobile/glft/c<",
        "TPlayerOrIMAAd;>;"
    }
.end annotation


# instance fields
.field k:I

.field private l:Lcom/moat/analytics/mobile/glft/g$a;

.field private m:I

.field private n:D

.field private o:I

.field private p:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/moat/analytics/mobile/glft/c;-><init>(Ljava/lang/String;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/moat/analytics/mobile/glft/g;->o:I

    iput p1, p0, Lcom/moat/analytics/mobile/glft/g;->k:I

    iput p1, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lcom/moat/analytics/mobile/glft/g;->n:D

    const/4 p1, 0x0

    iput p1, p0, Lcom/moat/analytics/mobile/glft/g;->p:I

    sget-object p1, Lcom/moat/analytics/mobile/glft/g$a;->a:Lcom/moat/analytics/mobile/glft/g$a;

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    return-void
.end method

.method private k()V
    .registers 5

    new-instance v0, Lcom/moat/analytics/mobile/glft/g$1;

    invoke-direct {v0, p0}, Lcom/moat/analytics/mobile/glft/g$1;-><init>(Lcom/moat/analytics/mobile/glft/g;)V

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/c;->g:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected a(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)Lorg/json/JSONObject;
    .registers 5

    iget-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->a:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    goto :goto_1a

    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/g;->g()Ljava/lang/Integer;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_11} :catch_12

    goto :goto_18

    :catch_12
    iget v0, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_18
    iput-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    :goto_1a
    iget-object v1, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_34

    iget-object v1, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_3c

    iget-object v1, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->d:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    if-ne v1, v2, :cond_3c

    iget v1, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    if-lez v1, :cond_3c

    :cond_34
    iget v0, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->b:Ljava/lang/Integer;

    :cond_3c
    iget-object v1, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->d:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v2, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    if-ne v1, v2, :cond_66

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_5e

    iget v1, p0, Lcom/moat/analytics/mobile/glft/g;->k:I

    if-eq v1, v2, :cond_5e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/moat/analytics/mobile/glft/c;->a(Ljava/lang/Integer;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5e

    :cond_59
    sget-object v0, Lcom/moat/analytics/mobile/glft/g$a;->e:Lcom/moat/analytics/mobile/glft/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    goto :goto_66

    :cond_5e
    :goto_5e
    sget-object v0, Lcom/moat/analytics/mobile/glft/g$a;->d:Lcom/moat/analytics/mobile/glft/g$a;

    iput-object v0, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    sget-object v0, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_STOPPED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    iput-object v0, p1, Lcom/moat/analytics/mobile/glft/MoatAdEvent;->d:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    :cond_66
    :goto_66
    invoke-super {p0, p1}, Lcom/moat/analytics/mobile/glft/c;->a(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;TPlayerOrIMAAd;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/glft/g;->k()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_8
    invoke-super {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/glft/c;->a(Ljava/util/Map;Ljava/lang/Object;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method protected abstract g()Ljava/lang/Integer;
.end method

.method protected abstract h()Z
.end method

.method protected abstract i()Ljava/lang/Integer;
.end method

.method j()Z
    .registers 13

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d4

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/c;->f()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_d4

    :cond_11
    const/4 v0, 0x1

    :try_start_12
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/g;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    if-ltz v3, :cond_21

    if-gez v2, :cond_21

    return v1

    :cond_21
    iput v2, p0, Lcom/moat/analytics/mobile/glft/g;->m:I

    if-nez v2, :cond_26

    return v0

    :cond_26
    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/g;->i()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0}, Lcom/moat/analytics/mobile/glft/g;->h()Z

    move-result v4

    int-to-double v5, v3

    const-wide/high16 v7, 0x4010000000000000L    # 4.0

    div-double/2addr v5, v7

    invoke-static {}, Lcom/moat/analytics/mobile/glft/p;->a()D

    move-result-wide v7

    const/4 v9, 0x0

    iget v10, p0, Lcom/moat/analytics/mobile/glft/g;->o:I

    if-le v2, v10, :cond_41

    iput v2, p0, Lcom/moat/analytics/mobile/glft/g;->o:I

    :cond_41
    iget v10, p0, Lcom/moat/analytics/mobile/glft/g;->k:I

    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_49

    iput v3, p0, Lcom/moat/analytics/mobile/glft/g;->k:I

    :cond_49
    if-eqz v4, :cond_86

    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    sget-object v4, Lcom/moat/analytics/mobile/glft/g$a;->a:Lcom/moat/analytics/mobile/glft/g$a;

    if-ne v3, v4, :cond_58

    sget-object v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_START:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/glft/g$a;->c:Lcom/moat/analytics/mobile/glft/g$a;

    :goto_55
    iput-object v3, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    goto :goto_90

    :cond_58
    sget-object v4, Lcom/moat/analytics/mobile/glft/g$a;->b:Lcom/moat/analytics/mobile/glft/g$a;

    if-ne v3, v4, :cond_61

    sget-object v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_PLAYING:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    sget-object v3, Lcom/moat/analytics/mobile/glft/g$a;->c:Lcom/moat/analytics/mobile/glft/g$a;

    goto :goto_55

    :cond_61
    int-to-double v3, v2

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    sub-int/2addr v3, v0

    const/4 v4, -0x1

    if-le v3, v4, :cond_90

    const/4 v4, 0x3

    if-ge v3, v4, :cond_90

    sget-object v4, Lcom/moat/analytics/mobile/glft/c;->e:[Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    aget-object v3, v4, v3

    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_90

    iget-object v4, p0, Lcom/moat/analytics/mobile/glft/c;->f:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v9, v3

    goto :goto_90

    :cond_86
    iget-object v3, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    sget-object v4, Lcom/moat/analytics/mobile/glft/g$a;->b:Lcom/moat/analytics/mobile/glft/g$a;

    if-eq v3, v4, :cond_90

    sget-object v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_PAUSED:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    iput-object v4, p0, Lcom/moat/analytics/mobile/glft/g;->l:Lcom/moat/analytics/mobile/glft/g$a;

    :cond_90
    :goto_90
    if-eqz v9, :cond_94

    const/4 v3, 0x1

    goto :goto_95

    :cond_94
    const/4 v3, 0x0

    :goto_95
    if-nez v3, :cond_b2

    iget-wide v4, p0, Lcom/moat/analytics/mobile/glft/g;->n:D

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_b2

    iget-wide v4, p0, Lcom/moat/analytics/mobile/glft/g;->n:D

    sub-double/2addr v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    const-wide v10, 0x3fa999999999999aL    # 0.05

    cmpl-double v6, v4, v10

    if-lez v6, :cond_b2

    sget-object v9, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    const/4 v3, 0x1

    :cond_b2
    if-eqz v3, :cond_c4

    new-instance v3, Lcom/moat/analytics/mobile/glft/MoatAdEvent;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-direct {v3, v9, v2, v4}, Lcom/moat/analytics/mobile/glft/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/glft/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    invoke-virtual {p0, v3}, Lcom/moat/analytics/mobile/glft/c;->dispatchEvent(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V

    :cond_c4
    iput-wide v7, p0, Lcom/moat/analytics/mobile/glft/g;->n:D

    iput v1, p0, Lcom/moat/analytics/mobile/glft/g;->p:I
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_c8} :catch_c9

    return v0

    :catch_c9
    nop

    iget v2, p0, Lcom/moat/analytics/mobile/glft/g;->p:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/moat/analytics/mobile/glft/g;->p:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_d4

    const/4 v1, 0x1

    :cond_d4
    :goto_d4
    return v1
.end method

.method public stopTracking()V
    .registers 3

    :try_start_0
    new-instance v0, Lcom/moat/analytics/mobile/glft/MoatAdEvent;

    sget-object v1, Lcom/moat/analytics/mobile/glft/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/glft/MoatAdEventType;

    invoke-direct {v0, v1}, Lcom/moat/analytics/mobile/glft/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/glft/MoatAdEventType;)V

    invoke-virtual {p0, v0}, Lcom/moat/analytics/mobile/glft/c;->dispatchEvent(Lcom/moat/analytics/mobile/glft/MoatAdEvent;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_f
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.g.AnonymousClass1 (com.moat.analytics.mobile.glft.g$1)
.class Lcom/moat/analytics/mobile/glft/g$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moat/analytics/mobile/glft/g;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/moat/analytics/mobile/glft/g;


# direct methods
.method constructor <init>(Lcom/moat/analytics/mobile/glft/g;)V
    .registers 2

    iput-object p1, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/glft/c;->i:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/c;->f()Z

    move-result v0

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/g;->j()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    iget-object v0, v0, Lcom/moat/analytics/mobile/glft/c;->g:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3e

    :cond_2c
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    :goto_2e
    invoke-virtual {v0}, Lcom/moat/analytics/mobile/glft/c;->e()V

    goto :goto_3e

    :cond_32
    iget-object v0, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    goto :goto_2e

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/glft/g$1;->a:Lcom/moat/analytics/mobile/glft/g;

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/glft/c;->e()V

    invoke-static {v0}, Lcom/moat/analytics/mobile/glft/l;->a(Ljava/lang/Exception;)V

    :goto_3e
    return-void
.end method

###### Class com.moat.analytics.mobile.glft.g.a (com.moat.analytics.mobile.glft.g$a)
.class public final enum Lcom/moat/analytics/mobile/glft/g$a;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moat/analytics/mobile/glft/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/moat/analytics/mobile/glft/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum b:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum c:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum d:Lcom/moat/analytics/mobile/glft/g$a;

.field public static final enum e:Lcom/moat/analytics/mobile/glft/g$a;

.field private static final synthetic f:[Lcom/moat/analytics/mobile/glft/g$a;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    new-instance v0, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v1, "UNINITIALIZED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moat/analytics/mobile/glft/g$a;->a:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v1, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v3, "PAUSED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/moat/analytics/mobile/glft/g$a;->b:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v3, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v5, "PLAYING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/moat/analytics/mobile/glft/g$a;->c:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v5, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v7, "STOPPED"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/moat/analytics/mobile/glft/g$a;->d:Lcom/moat/analytics/mobile/glft/g$a;

    new-instance v7, Lcom/moat/analytics/mobile/glft/g$a;

    const-string v9, "COMPLETED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/moat/analytics/mobile/glft/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/moat/analytics/mobile/glft/g$a;->e:Lcom/moat/analytics/mobile/glft/g$a;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/moat/analytics/mobile/glft/g$a;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lcom/moat/analytics/mobile/glft/g$a;->f:[Lcom/moat/analytics/mobile/glft/g$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moat/analytics/mobile/glft/g$a;
    .registers 2

    const-class v0, Lcom/moat/analytics/mobile/glft/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/moat/analytics/mobile/glft/g$a;

    return-object p0
.end method

.method public static values()[Lcom/moat/analytics/mobile/glft/g$a;
    .registers 1

    sget-object v0, Lcom/moat/analytics/mobile/glft/g$a;->f:[Lcom/moat/analytics/mobile/glft/g$a;

    invoke-virtual {v0}, [Lcom/moat/analytics/mobile/glft/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/moat/analytics/mobile/glft/g$a;

    return-object v0
.end method
