###### Class com.gameloft.android2d.iap.IAPLib (com.gameloft.android2d.iap.IAPLib)
.class public Lcom/gameloft/android2d/iap/IAPLib;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Lcom/gameloft/android2d/iap/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gameloft/android2d/iap/IAPLib$y;
    }
.end annotation


# static fields
.field private static A:J

.field private static B:J

.field private static C:J

.field public static D:Z

.field public static E:Z

.field public static F:Z

.field public static G:Z

.field public static H:Z

.field private static I:Z

.field private static J:I

.field public static K:Z

.field public static L:Z

.field public static M:Z

.field public static N:Z

.field public static O:Z

.field private static P:Z

.field private static Q:Z

.field public static R:J

.field public static S:Z

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:Ljava/lang/String;

.field public static W:Ljava/lang/String;

.field public static X:Lorg/json/JSONObject;

.field public static Y:Lorg/json/JSONObject;

.field public static Z:Ljava/lang/String;

.field public static a0:Ljava/lang/String;

.field public static b0:Z

.field public static c0:Z

.field public static d0:Z

.field public static e0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static f:Ljava/lang/String;

.field public static f0:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/String;

.field public static g0:I

.field private static h:Ljava/lang/String;

.field private static h0:Z

.field private static i:Ljava/lang/String;

.field private static i0:I

.field private static final j:Lcom/gameloft/android2d/iap/IAPLib;

.field private static j0:I

.field static k:I

.field private static k0:I

.field private static l:Ljava/lang/String;

.field private static l0:I

.field public static m:Ljava/lang/String;

.field private static m0:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field private static n0:Z

.field public static o:Z

.field public static o0:I

.field public static p:Ljava/lang/String;

.field public static p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static q:Z

.field private static q0:Ljava/lang/String;

.field public static r:Z

.field public static r0:I

.field public static s:Z

.field public static s0:Ljava/lang/String;

.field public static t:Z

.field public static t0:Ljava/lang/String;

.field public static u:Z

.field public static u0:Z

.field public static v:Z

.field private static v0:Lorg/json/JSONArray;

.field public static w:Z

.field public static final w0:[Ljava/lang/String;

.field public static x:Z

.field private static y:Ljava/lang/String;

.field private static z:Ljava/lang/String;


# instance fields
.field private A0:Ljava/lang/String;

.field private B0:I

.field private C0:Ljava/lang/String;

.field private D0:I

.field private E0:Ljava/lang/String;

.field private F0:Ljava/lang/String;

.field private G0:I

.field private H0:Z

.field private I0:Ljava/lang/String;

.field private J0:Z

.field private K0:Z

.field private L0:Z

.field private M0:I

.field private N0:Ljava/lang/String;

.field private O0:Ljava/lang/String;

.field P0:Landroid/app/Activity;

.field Q0:Landroid/app/Dialog;

.field private R0:Z

.field private S0:Z

.field private T0:Z

.field private U0:Z

.field private x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

.field private y0:Z

.field private z0:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/IAPLib;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    const/4 v0, 0x0

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->k:I

    const-string v1, "IAP.Version: 1.2.0"

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->l:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->n:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->o:Z

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->q:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->r:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->t:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->u:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->v:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->w:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->x:Z

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->y:Ljava/lang/String;

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->z:Ljava/lang/String;

    const-wide/16 v2, -0x7d0

    sput-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->A:J

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->B:J

    sput-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->C:J

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->D:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->E:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->F:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->G:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->H:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->I:Z

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->J:I

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->K:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->L:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->M:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->N:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->O:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->P:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->Q:Z

    sput-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    const-string v2, ""

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->U:Ljava/lang/String;

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->V:Ljava/lang/String;

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->W:Ljava/lang/String;

    const-string v2, "application/com.gameloft.ecomm.android.iap-v1.3+plain"

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    const-string v2, "text/html"

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->a0:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->b0:Z

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    const/4 v2, 0x1

    sput-boolean v2, Lcom/gameloft/android2d/iap/IAPLib;->d0:Z

    const/4 v2, -0x1

    sput v2, Lcom/gameloft/android2d/iap/IAPLib;->g0:I

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->h0:Z

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->i0:I

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->j0:I

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->k0:I

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->l0:I

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->m0:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->n0:Z

    sput v2, Lcom/gameloft/android2d/iap/IAPLib;->o0:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->q0:Ljava/lang/String;

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->s0:Ljava/lang/String;

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->t0:Ljava/lang/String;

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->v0:Lorg/json/JSONArray;

    const-string v0, "40412|40407|40404|40424|40482|40419|40478|40422|405799|40487|40489|40456|405852|405850|40444|40414|405848|405853|405845|405849|405846"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->w0:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->y0:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->z0:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->A0:Ljava/lang/String;

    iput v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->C0:Ljava/lang/String;

    const/4 v2, -0x1

    iput v2, p0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    iput v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->G0:I

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->I0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->J0:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->K0:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->L0:Z

    iput v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->M0:I

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    iput-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib;->O0:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->R0:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->S0:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    iput-boolean v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    return-void
.end method

.method public static AddNCIReceipts(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object p0, Lcom/gameloft/android2d/iap/IAPLib;->v0:Lorg/json/JSONArray;

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_a

    :catch_a
    return-void
.end method

.method public static AllowLoadFeedAgain()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    const-string v0, ""

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    return-void
.end method

.method public static CheckAvailable()Z
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->isDemoBuild()Z

    move-result v0

    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->y0:Z

    if-eqz v1, :cond_e

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public static CheckFreemiumLimitation(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 6

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->E()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->isLegacyBetaStatus()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f1203c1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getPortalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120342

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDownloadCode()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_4b
    const-string v1, "|"

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUnlockCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v3, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->D()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lcom/gameloft/android2d/iap/utils/Device;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-direct {v1, v3, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    invoke-virtual {v1, v0, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a8
    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->i()Z

    move-result p0

    if-nez p0, :cond_b6

    const-wide/16 v2, 0x32

    :try_start_b0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_b0 .. :try_end_b3} :catch_b4

    goto :goto_a8

    :catch_b4
    nop

    goto :goto_a8

    :cond_b6
    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p0

    const/16 v0, 0x193

    if-eq p0, v0, :cond_d2

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p0

    const/16 v0, 0x1ad

    if-ne p0, v0, :cond_c7

    goto :goto_d2

    :cond_c7
    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p0

    if-eqz p0, :cond_d0

    const/16 p0, -0x3e8

    return p0

    :cond_d0
    const/4 p0, 0x0

    return p0

    :cond_d2
    :goto_d2
    const-string p0, "code"

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnLimitRequestCallback(Ljava/lang/String;)V

    const-string p0, "message"

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationMessage(Ljava/lang/String;)V

    const-string p0, "next_transaction_time"

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationNextTransactionTime(Ljava/lang/String;)V

    const-string p0, "seconds_before_next_transaction"

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->SetLimitationSecondsBeforeNextTransaction(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result p0

    return p0
.end method

.method public static CheckItemIsHidden(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    const-string p1, "hidden"

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2c} :catch_2d

    return p0

    :catch_2d
    return v0
.end method

.method public static CheckPendingVerification()V
    .registers 3

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->O:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->O:Z

    return-void

    :cond_8
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPackageIDPurchased()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPackageTypePurchased()Ljava/lang/String;

    move-result-object v2

    if-ltz v0, :cond_43

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1f

    return-void

    :cond_1f
    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->X()Z

    move-result v2

    if-eqz v2, :cond_2a

    return-void

    :cond_2a
    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->Y()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_40

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void

    :cond_40
    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/a;->k(Z)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_43

    :catch_43
    :cond_43
    return-void
.end method

.method public static CheckRedeem()V
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->n0:Z

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$o;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$o;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_1b

    :cond_12
    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_1b
    return-void
.end method

.method public static CheckWPLimitation(Ljava/lang/String;Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v1

    :try_start_6
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_f} :catch_10

    goto :goto_11

    :catch_10
    move-object p1, v0

    :goto_11
    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$j;

    invoke-direct {v2}, Lcom/gameloft/android2d/iap/IAPLib$j;-><init>()V

    invoke-virtual {v1, p0, v0, p1, v2}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public static CleanNonConsumeItems()V
    .registers 0

    return-void
.end method

.method public static Clear()V
    .registers 1

    const-string v0, ""

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveNotifyID(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveDevPayload(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->savePendingTransactionResult(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveUserID(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveOrderID(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveSku(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveWAPPurchaseID(Ljava/lang/String;)V

    return-void
.end method

.method public static CorrectTextConfirmation(Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/g;)Ljava/lang/String;
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    :cond_9
    :try_start_9
    const-string v0, "<formatted_price>"

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->y()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<shortcode>"

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<virtual_currency_name>"

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<content_name>"

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->D()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<iap_pack_amount>"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->s()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_52} :catch_52

    :catch_52
    return-object p0
.end method

.method public static EShowRegionOperatorSelection()V
    .registers 0

    return-void
.end method

.method public static GetBillingType(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetBillingType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetBillingType(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->t()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static GetBundleItemInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->p()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetCRMUrl()Ljava/lang/String;
    .registers 4

    const-string v0, ""

    const v1, 0x7f12031f

    :try_start_5
    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f120298

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_22

    const v1, 0x7f120299

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    :cond_22
    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202af

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const v1, 0x7f1202a0

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3e} :catch_3e

    :catch_3e
    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public static GetConfigStoreName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    :cond_15
    const-string v0, ""

    :goto_17
    return-object v0
.end method

.method public static GetCountryISO()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getSimCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_e
    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getDeviceCountry()Ljava/lang/String;

    move-result-object v0

    :cond_12
    return-object v0
.end method

.method public static GetFeed()V
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    const/16 v2, 0xb

    if-nez v1, :cond_11

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x8

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto/16 :goto_91

    :cond_11
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_89

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    goto :goto_89

    :cond_24
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->Y:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_35

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 v0, -0x16

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_91

    :cond_35
    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    if-eqz v1, :cond_5a

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkMessageSent()Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :cond_4c
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$k;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$k;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_91

    :cond_5a
    sput-object v3, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$y;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/gameloft/android2d/iap/IAPLib$y;-><init>(Lcom/gameloft/android2d/iap/IAPLib;Lcom/gameloft/android2d/iap/IAPLib$k;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->L:Z

    if-eqz v0, :cond_83

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->M:Z

    if-nez v0, :cond_83

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$q;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/IAPLib$q;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_83
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    goto :goto_91

    :cond_89
    :goto_89
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 v0, -0xf

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_91
    return-void
.end method

.method public static GetHiddenItemNumber(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gameloft/android2d/iap/utils/g;

    const-string v4, "hidden"

    invoke-virtual {v3, v4}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_3a

    if-eqz v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_39
    return v2

    :catch_3a
    return v0
.end method

.method public static GetIAPKey(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->X:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->X:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static GetItemCategoryTag(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->z()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetItemContentID(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetItemImage(ILjava/lang/String;)Lcom/gameloft/android2d/iap/wrapper/Image;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->M()Lcom/gameloft/android2d/iap/wrapper/Image;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetItemName(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetItemName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetItemName(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->D()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetItemNumber()I
    .registers 1

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetItemNumber(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetItemNumber(Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    const/4 v2, 0x0

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_39

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gameloft/android2d/iap/utils/g;

    const-string v4, "hidden"

    invoke-virtual {v3, v4}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_3a

    if-nez v3, :cond_16

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_39
    return v2

    :catch_3a
    return v0
.end method

.method public static GetItemTrackingUID(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->K()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetLastBillingType()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastCarrierNamePurchased()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x34

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastContentIdPurchased()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastContentID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastFormattedPricePurchased()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastFormattedPrice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastItemJsonPurchased()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastItemTrackingUIDPurchased()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastItemTrackingUID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastOfflineItemsPurchased()[Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastOfflineItems()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastPriceValuePurchased()F
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPrice()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static GetLastPurchasedBundleInfo()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPurchasedBundleInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastPurchasedSubscriptionItemInfo()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPurchasedSubscriptionItemInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastPurchasedSubscriptionRewardItemInfo()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPurchasedSubscriptionRewardItemInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLastVirtualCurrencyPurchased()J
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastVirtualCurrency()J

    move-result-wide v0

    return-wide v0
.end method

.method public static GetLimitationMessage()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->U:Ljava/lang/String;

    return-object v0
.end method

.method public static GetLimitationNextTransactionTime()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->V:Ljava/lang/String;

    return-object v0
.end method

.method public static GetLimitationSecondsBeforeNextTransaction()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->W:Ljava/lang/String;

    return-object v0
.end method

.method public static GetLimitsValidation()V
    .registers 5

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    return-void

    :cond_b
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->g()Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :cond_20
    const-string v0, ""

    :goto_22
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2f

    const v0, 0x7f12031e

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    :cond_2f
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->isLegacyBetaStatus()Z

    move-result v1

    if-nez v1, :cond_3b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_42

    :cond_3b
    const v0, 0x7f12031d

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    :cond_42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getShopName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v4, 0x7f120330

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getShopName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12036c

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const v3, 0x7f1203ae

    :try_start_ac
    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_ac .. :try_end_b7} :catch_b7

    :catch_b7
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/gameloft/android2d/iap/IAPLib$f;

    invoke-direct {v4}, Lcom/gameloft/android2d/iap/IAPLib$f;-><init>()V

    invoke-virtual {v3, v1, v0, v2, v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public static GetListItemsRestore()V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v1

    if-nez v1, :cond_3b

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->e0:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/gameloft/android2d/iap/IAPLib;->f0:Ljava/util/Set;

    const/16 v1, 0x3c

    const-string v2, ""

    invoke-static {v2, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    const/16 v1, 0x3d

    invoke-static {v2, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$h;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$h;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_47

    :cond_3b
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListItemsRestoreCB([Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListInfoRestoreCB([Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :goto_47
    return-void
.end method

.method public static GetListItemsRestoreCB()V
    .registers 5

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->e0:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    move-object v0, v1

    goto :goto_1b

    :cond_d
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->e0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1b
    const/4 v2, 0x0

    if-eqz v0, :cond_25

    const/4 v3, 0x0

    :goto_1f
    array-length v4, v0

    if-ge v3, v4, :cond_25

    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_25
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListItemsRestoreCB([Ljava/lang/String;)V

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->f0:Ljava/util/Set;

    if-eqz v0, :cond_59

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_33

    goto :goto_42

    :cond_33
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->f0:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    :goto_42
    if-eqz v1, :cond_4a

    :goto_44
    array-length v0, v1

    if-ge v2, v0, :cond_4a

    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_4a
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListInfoRestoreCB([Ljava/lang/String;)V

    goto :goto_59

    :cond_4e
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListItemsRestoreCB([Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetListInfoRestoreCB([Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :cond_59
    :goto_59
    return-void
.end method

.method public static GetNCIReceipts()Lorg/json/JSONArray;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->v0:Lorg/json/JSONArray;

    return-object v0
.end method

.method public static GetOfflineItems(I)[Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetOfflineItems(ILjava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetOfflineItems(ILjava/lang/String;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->e()[Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetOldContentId(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->e()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static GetPackageIDPurchased()I
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_d

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getPackageId()I

    move-result v1

    iput v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    :cond_d
    iget v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    return v0
.end method

.method public static GetPackageIDPurchasedNTier()I
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPackageIDPurchased()I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPackageTypePurchased()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->getIndexOfPricepoint(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static GetPackageTypePurchased()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getPackageType()Ljava/lang/String;

    move-result-object v0

    goto :goto_13

    :cond_11
    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    :goto_13
    return-object v0
.end method

.method public static GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->Y:Lorg/json/JSONObject;

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const-string p0, ""

    return-object p0
.end method

.method public static GetPrice(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetPrice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetPrice(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->x()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static GetPricePoint(I)I
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetPricePoint(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GetPricePoint(ILjava/lang/String;)I
    .registers 4

    const v0, 0x7f1202ce

    const/4 v1, -0x1

    :try_start_4
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gameloft/android2d/iap/utils/h;->t(I)I

    move-result v1

    goto :goto_81

    :cond_1b
    const v0, 0x7f1202cf

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gameloft/android2d/iap/utils/h;->u(I)I

    move-result v1

    goto :goto_81

    :cond_35
    const v0, 0x7f1202cd

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gameloft/android2d/iap/utils/h;->s(I)I

    move-result v1

    goto :goto_81

    :cond_4f
    const v0, 0x7f1202d0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_69

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/gameloft/android2d/iap/utils/h;->v(I)I

    move-result v1

    goto :goto_81

    :cond_69
    sget-object p0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->H(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_81

    iget-object p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/utils/h;->r(Ljava/lang/String;)I

    move-result v1
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_81} :catch_81

    :catch_81
    :cond_81
    :goto_81
    return v1
.end method

.method public static GetPriceValue(ILjava/lang/String;)F
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    return p0

    :catch_2c
    return v0
.end method

.method public static GetProfilesStatus()Ljava/lang/String;
    .registers 2

    const/16 v0, 0x2c

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_10
    const-string v0, "0"

    :cond_12
    return-object v0
.end method

.method public static GetPromoDescription()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->w()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetPromoEffectiveDiscount(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    const-string p1, "effective_discount"

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_2a

    float-to-int p0, p0

    return p0

    :catch_2a
    return v0
.end method

.method public static GetPromoEffectiveDiscountAmount(ILjava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->s()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->t()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x64

    mul-long v1, v1, v3

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->t()J

    move-result-wide p0

    div-long/2addr v1, p0

    long-to-float p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_35} :catch_36

    return p0

    :catch_36
    return v0
.end method

.method public static GetPromoEffectiveDiscountPrice(ILjava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result p1

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->G()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result p0

    sub-float/2addr p1, p0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p1, p1, v1

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_3d

    return p0

    :catch_3d
    return v0
.end method

.method public static GetPromoEndTime()Ljava/lang/String;
    .registers 2

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return-object v1

    :cond_6
    :try_start_6
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->y()Ljava/lang/String;

    move-result-object v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_16

    if-nez v0, :cond_15

    return-object v1

    :cond_15
    return-object v0

    :catch_16
    return-object v1
.end method

.method public static GetPromoOldPrice(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetPromoOldPrice(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetPromoOldPrice(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->F()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetPromoOldPriceValue(ILjava/lang/String;)F
    .registers 4

    const/high16 v0, -0x40800000    # -1.0f

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1f

    return v0

    :cond_1f
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->G()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_33

    const-string p1, ""

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_33

    :cond_2e
    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result p0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    return p0

    :catch_33
    :cond_33
    :goto_33
    return v0
.end method

.method public static GetPurchaseReceipt(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_31

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_a

    goto :goto_31

    :cond_a
    :try_start_a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetNCIReceipts()Lorg/json/JSONArray;

    move-result-object v1

    const-string v2, "productId"

    const/4 v3, 0x0

    :goto_11
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_31

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2d} :catch_31

    return-object p0

    :cond_2e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catch_31
    :cond_31
    :goto_31
    return-object v0
.end method

.method public static GetPurchaseReceipts()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetRestoreCertificate()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x3d

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetRestoreTransactionID()Ljava/lang/String;
    .registers 1

    const/16 v0, 0x3c

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetServerRealTime()J
    .registers 6

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetServerTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseLongNumber(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/gameloft/android2d/iap/IAPLib;->B:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static GetServerTime()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->z()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->c0:Z

    if-eqz v1, :cond_12

    const/4 v0, 0x0

    return-object v0

    :cond_12
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public static GetSpecialFlow()I
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->h()I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_16

    const/16 v2, 0x11

    if-eq v1, v2, :cond_15

    const/16 v2, 0x10

    if-ne v1, v2, :cond_16

    :cond_15
    move v0, v1

    :catch_16
    :cond_16
    return v0
.end method

.method public static GetSpecialPackageRequirement(I)I
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetSpecialPackageRequirement(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static GetSpecialPackageRequirement(ILjava/lang/String;)I
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public static GetSubscriptionItemInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->I()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetSubscriptionRewardItemInfo(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->J()Ljava/lang/String;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    return-object p0

    :catch_23
    return-object v0
.end method

.method public static GetSubscriptionStatus(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$p;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$p;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_21
    const/4 p0, 0x0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static GetTermsAndConditions()Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->f()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v2

    if-eqz v2, :cond_49

    :cond_13
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_49

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_13

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->H()Ljava/lang/String;

    move-result-object v0
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_49

    :catch_49
    :cond_49
    return-object v0
.end method

.method public static GetTermsAndConditions(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetTermsAndConditions(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static GetTermsAndConditions(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->H()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static GetTransactionID()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getTransactionID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetUpdateProfileInfo()V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->d()V

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/16 v0, 0xb

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x7

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_31

    :cond_1d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/gameloft/android2d/iap/IAPLib;->B:J

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPromoEndTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetServerTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->computeCountDownTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/gameloft/android2d/iap/IAPLib;->A:J

    :goto_31
    return-void
.end method

.method public static Get_HDIDFV_Update()I
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    if-eqz v0, :cond_7

    sget v0, Lcom/gameloft/android2d/iap/IAPLib;->J:I

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static Init()V
    .registers 20

    invoke-static {}, Lcom/gameloft/android/ANMP/GloftAGHM/GLUtils/SUtils;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/wrapper/Utils;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/wrapper/Utils;->getActivity()Landroid/app/Activity;

    move-result-object v1

    sget-boolean v2, Lcom/gameloft/android2d/iap/wrapper/a;->i:Z

    sget-object v3, Lcom/gameloft/android2d/iap/wrapper/a;->j:Ljava/lang/String;

    sget-boolean v4, Lcom/gameloft/android2d/iap/wrapper/a;->k:Z

    sget-boolean v5, Lcom/gameloft/android2d/iap/wrapper/a;->l:Z

    sget v6, Lcom/gameloft/android2d/iap/wrapper/a;->m:I

    sget-boolean v7, Lcom/gameloft/android2d/iap/wrapper/a;->n:Z

    sget-object v8, Lcom/gameloft/android2d/iap/wrapper/a;->o:Ljava/lang/String;

    sget-boolean v9, Lcom/gameloft/android2d/iap/wrapper/a;->p:Z

    sget-boolean v10, Lcom/gameloft/android2d/iap/wrapper/a;->q:Z

    sget-boolean v11, Lcom/gameloft/android2d/iap/wrapper/a;->r:Z

    sget-boolean v12, Lcom/gameloft/android2d/iap/wrapper/a;->s:Z

    sget v13, Lcom/gameloft/android2d/iap/wrapper/a;->t:I

    sget-boolean v14, Lcom/gameloft/android2d/iap/wrapper/a;->u:Z

    sget-boolean v15, Lcom/gameloft/android2d/iap/wrapper/a;->v:Z

    sget-boolean v16, Lcom/gameloft/android2d/iap/wrapper/a;->w:Z

    sget-boolean v17, Lcom/gameloft/android2d/iap/wrapper/a;->x:Z

    sget-boolean v18, Lcom/gameloft/android2d/iap/wrapper/a;->y:Z

    sget-boolean v19, Lcom/gameloft/android2d/iap/wrapper/a;->z:Z

    invoke-static/range {v1 .. v19}, Lcom/gameloft/android2d/iap/IAPLib;->Init(Landroid/app/Activity;ZLjava/lang/String;ZZIZLjava/lang/String;ZZZZIZZZZZZ)V

    return-void
.end method

.method public static Init(Landroid/app/Activity;ZLjava/lang/String;ZZIZLjava/lang/String;ZZZZIZZZZZZ)V
    .registers 25

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    sput-boolean p11, Lcom/gameloft/android2d/iap/IAPLib;->I:Z

    sput p12, Lcom/gameloft/android2d/iap/IAPLib;->J:I

    sput-boolean p18, Lcom/gameloft/android2d/iap/IAPLib;->b0:Z

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x16

    if-le v1, v2, :cond_11

    const/4 v1, 0x2

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->J:I

    :cond_11
    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    move v1, p1

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->J0:Z

    move v1, p3

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->K0:Z

    move v1, p4

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->L0:Z

    move v1, p5

    iput v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->M0:I

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->InitIAPKeys()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->InitIAPObjects()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkMessageSent()Z

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->O0:Ljava/lang/String;

    const v1, 0x7f120321

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->I0:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetSerialKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->C0:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->GetVersionNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->A0:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUnlockCode()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_84

    const/16 v1, 0x3e8

    const/16 v4, 0x270f

    invoke-static {v1, v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getUniqueCode(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    sget-object v4, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-static {v4, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    :cond_84
    sput-object p2, Lcom/gameloft/android2d/iap/IAPLib;->m:Ljava/lang/String;

    sput-boolean p16, Lcom/gameloft/android2d/iap/IAPLib;->K:Z

    sput-boolean p17, Lcom/gameloft/android2d/iap/IAPLib;->L:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->M:Z

    sput-boolean p6, Lcom/gameloft/android2d/iap/IAPLib;->o:Z

    sput-object p7, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    sput-boolean p8, Lcom/gameloft/android2d/iap/IAPLib;->q:Z

    sput-boolean p9, Lcom/gameloft/android2d/iap/IAPLib;->r:Z

    sput-boolean p10, Lcom/gameloft/android2d/iap/IAPLib;->D:Z

    sput-boolean p14, Lcom/gameloft/android2d/iap/IAPLib;->E:Z

    sput-boolean p15, Lcom/gameloft/android2d/iap/IAPLib;->F:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->isCreditCardEnabled()Z

    move-result v4

    if-nez v4, :cond_a9

    sput-boolean v3, Lcom/gameloft/android2d/iap/IAPLib;->r:Z

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->D:Z

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->E:Z

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->F:Z

    :cond_a9
    const v4, 0x7f1202d4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c0

    const/4 v4, 0x1

    goto :goto_c1

    :cond_c0
    const/4 v4, 0x0

    :goto_c1
    sput-boolean v4, Lcom/gameloft/android2d/iap/IAPLib;->h0:Z

    if-eqz p13, :cond_c9

    sput-boolean v3, Lcom/gameloft/android2d/iap/IAPLib;->P:Z

    sput-boolean v3, Lcom/gameloft/android2d/iap/IAPLib;->Q:Z

    :cond_c9
    iput-boolean v3, v0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    sget-object v3, Lcom/gameloft/android2d/iap/IAPLib;->l:Ljava/lang/String;

    if-eqz v3, :cond_e4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/gameloft/android2d/iap/IAPLib;->l:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->l:Ljava/lang/String;

    :cond_e4
    new-instance v2, Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-direct {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;-><init>()V

    iput-object v2, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    const v0, 0x7f120318

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    const-string v0, "application/x-www-form-urlencoded"

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->a0:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->InitDeviceValues()V

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->w:Z

    return-void
.end method

.method public static InitIAPKeys()V
    .registers 7

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->X:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    const v1, 0x7f1202bf

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->readAsset(Ljava/lang/String;Z)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONObject;

    const v2, 0x7f12032b

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->KeyGenerator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    :goto_35
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->KeyGenerator(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gameloft/android2d/iap/utils/XXTEA;->DecryptString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/gameloft/android2d/iap/IAPLib;->X:Lorg/json/JSONObject;

    invoke-virtual {v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5d} :catch_5e

    goto :goto_35

    :catch_5e
    :cond_5e
    return-void
.end method

.method public static InitIAPObjects()V
    .registers 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->Y:Lorg/json/JSONObject;

    new-instance v0, Ljava/lang/String;

    const v1, 0x7f1202c0

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->readAsset(Ljava/lang/String;Z)[B

    move-result-object v1

    const v3, 0x7f1203b9

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gameloft/android2d/iap/utils/XXTEA;->MD5Decryp([BLjava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    :goto_2c
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v2, v0, :cond_48

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gameloft/android2d/iap/IAPLib;->Y:Lorg/json/JSONObject;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_45} :catch_48

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :catch_48
    :cond_48
    return-void
.end method

.method public static IsDebug()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->I:Z

    return v0

    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public static IsEnableSMSEncryption()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->P:Z

    return v0
.end method

.method public static IsLastPurchaseRedeem()Z
    .registers 2

    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static IsLastPurchaseRestore()Z
    .registers 2

    const/16 v0, 0x3e

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static IsLastPurchaseSubscription()Z
    .registers 2

    const/16 v0, 0x3f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_LoadInfo(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_12

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static IsUseWPIAP()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->Q:Z

    return v0
.end method

.method public static NewVerifyRequest(I)Z
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(I)Z

    move-result p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->VerifyProcess(Z)Z

    move-result p0

    return p0
.end method

.method public static NewVerifyRequest(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->VerifyProcess(Z)Z

    move-result p0

    return p0
.end method

.method public static SendRequest(I)V
    .registers 4

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V

    return-void
.end method

.method public static SendRequest(IJ)V
    .registers 4

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V

    return-void
.end method

.method public static SendRequest(ILjava/lang/String;)V
    .registers 4

    const-wide/16 v0, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V

    return-void
.end method

.method public static SendRequest(ILjava/lang/String;J)V
    .registers 14

    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput p0, v1, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    iput-object p1, v1, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    iget-object v2, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    iget-object v3, v1, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v2

    iget v3, v1, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gameloft/android2d/iap/billings/a;->w()I

    move-result v7

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/IAPLib;->GetBillingType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_40

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_40
    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1202cd

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_53

    :cond_51
    const/4 v4, 0x1

    goto :goto_54

    :cond_53
    const/4 v4, 0x0

    :goto_54
    const v5, 0x7f1202b4

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    const v5, 0x7f1202ea

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_74

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    :cond_74
    const/16 v5, 0xff

    if-ne v7, v5, :cond_7e

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    :cond_7e
    if-nez v7, :cond_88

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_88

    if-eqz v4, :cond_c6

    :cond_88
    if-nez v7, :cond_9a

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_9a

    if-eqz v4, :cond_9a

    sget-boolean v4, Lcom/gameloft/android2d/iap/IAPLib;->G:Z

    if-nez v4, :cond_c6

    sget-boolean v4, Lcom/gameloft/android2d/iap/IAPLib;->H:Z

    if-nez v4, :cond_c6

    :cond_9a
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->isRedeemUnlocked()Z

    move-result v4

    if-nez v4, :cond_c6

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/g;->o()I

    move-result v2

    if-ne v2, v0, :cond_ad

    goto :goto_c6

    :cond_ad
    iget-object v0, v1, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$r;

    move-object v4, v2

    move v5, p0

    move-object v6, p1

    move-wide v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/gameloft/android2d/iap/IAPLib$r;-><init>(ILjava/lang/String;IJ)V

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object p0, v1, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance p1, Lcom/gameloft/android2d/iap/IAPLib$s;

    invoke-direct {p1}, Lcom/gameloft/android2d/iap/IAPLib$s;-><init>()V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d2

    :cond_c6
    :goto_c6
    iget p0, v1, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    iget-object p1, v1, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    invoke-static {p0, p1, p2, p3}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_cd} :catch_ce

    return-void

    :catch_ce
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :goto_d2
    return-void
.end method

.method public static SendRequest(Ljava/lang/String;J)V
    .registers 4

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android2d/iap/utils/h;->i(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->B()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :goto_24
    return-void
.end method

.method public static SendRequestExec(ILjava/lang/String;J)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->isTransactionInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->isRedeemUnlocked()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestSentCallback()V

    :cond_10
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->markTransactionInProgressStatus()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$t;

    invoke-direct {v1, p1, p0, p2, p3}, Lcom/gameloft/android2d/iap/IAPLib$t;-><init>(Ljava/lang/String;IJ)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_29

    :catch_25
    const/4 p0, 0x3

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :goto_29
    return-void
.end method

.method public static SetLimitationMessage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->U:Ljava/lang/String;

    return-void
.end method

.method public static SetLimitationNextTransactionTime(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->V:Ljava/lang/String;

    return-void
.end method

.method public static SetLimitationSecondsBeforeNextTransaction(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->W:Ljava/lang/String;

    return-void
.end method

.method public static SetPurchaseReceipts(Ljava/lang/String;)V
    .registers 2

    const/16 v0, 0x2f

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    return-void
.end method

.method public static Update()I
    .registers 7

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    iget-boolean v2, v0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    if-nez v2, :cond_9

    return v1

    :cond_9
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkMessageSent()Z

    const/4 v2, 0x7

    const-string v3, "0"

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x3

    if-eq v1, v6, :cond_28

    if-ne v1, v2, :cond_17

    goto :goto_28

    :cond_17
    const/16 v2, 0xb

    if-ne v1, v2, :cond_1e

    iput v5, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    goto :goto_45

    :cond_1e
    if-nez v1, :cond_45

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_45

    :cond_28
    :goto_28
    iput v5, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-static {v0, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->clearTransactionInProgressStatus()V

    if-ne v1, v2, :cond_39

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->saveMoneySpentInfo()V

    :cond_39
    if-ne v1, v6, :cond_42

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getError()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_45

    :cond_42
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Clear()V

    :cond_45
    :goto_45
    return v1
.end method

.method public static UpdatePromoCountDownTime()J
    .registers 7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->A:J

    sget-wide v4, Lcom/gameloft/android2d/iap/IAPLib;->B:J

    sub-long/2addr v0, v4

    sub-long/2addr v2, v0

    const-wide/16 v0, 0x7d0

    add-long/2addr v2, v0

    sget-wide v0, Lcom/gameloft/android2d/iap/IAPLib;->C:J

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-lez v6, :cond_1c

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1c

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->AllowLoadFeedAgain()V

    :cond_1c
    sput-wide v2, Lcom/gameloft/android2d/iap/IAPLib;->C:J

    return-wide v2
.end method

.method public static VerifyProcess(Z)Z
    .registers 4

    if-eqz p0, :cond_2b

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$u;

    invoke-direct {v2, v0}, Lcom/gameloft/android2d/iap/IAPLib$u;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_2b

    :cond_24
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->cleanStatus()V

    :cond_2b
    :goto_2b
    return p0
.end method

.method static synthetic access$002(J)J
    .registers 2

    sput-wide p0, Lcom/gameloft/android2d/iap/IAPLib;->B:J

    return-wide p0
.end method

.method static synthetic access$100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->I0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 1

    invoke-static {p0}, Lcom/gameloft/android2d/iap/IAPLib;->getOSConfirmationLayout(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/gameloft/android2d/iap/IAPLib;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    return p1
.end method

.method static synthetic access$1302(Z)Z
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/IAPLib;->n0:Z

    return p0
.end method

.method static synthetic access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    return-object p0
.end method

.method static synthetic access$302(J)J
    .registers 2

    sput-wide p0, Lcom/gameloft/android2d/iap/IAPLib;->A:J

    return-wide p0
.end method

.method static synthetic access$500()Lcom/gameloft/android2d/iap/IAPLib;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    return-object v0
.end method

.method static synthetic access$600(Lcom/gameloft/android2d/iap/IAPLib;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    return p0
.end method

.method static synthetic access$700(Lcom/gameloft/android2d/iap/IAPLib;)I
    .registers 1

    iget p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    return p0
.end method

.method static synthetic access$702(Lcom/gameloft/android2d/iap/IAPLib;I)I
    .registers 2

    iput p1, p0, Lcom/gameloft/android2d/iap/IAPLib;->D0:I

    return p1
.end method

.method static synthetic access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/gameloft/android2d/iap/IAPLib;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->Q:Z

    return v0
.end method

.method public static addRestoreItem(Ljava/lang/String;)V
    .registers 2

    const-string v0, ""

    invoke-static {p0, v0, v0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->addRestoreItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static addRestoreItem(Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/g;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v5, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/gameloft/android2d/iap/billings/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_e

    :catch_e
    :cond_e
    return-void
.end method

.method public static addRestoreItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v1

    if-nez v1, :cond_2e

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/gameloft/android2d/iap/billings/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_2e

    :catch_2e
    :cond_2e
    return-void
.end method

.method public static checkEntryIdItem(Ljava/lang/String;)Z
    .registers 2

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android2d/iap/utils/h;->i(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_10

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :catch_10
    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static checkHKServices()V
    .registers 5

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->downloadHKServices()V

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    return-void

    :cond_f
    :try_start_f
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    sput v2, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x19

    if-gt v2, v3, :cond_6e

    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_34

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    return-void

    :cond_34
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/gameloft/android2d/iap/IAPLib;->q0:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    return-void

    :cond_6e
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7b

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    return-void

    :cond_7b
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_83
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->q0:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_b0} :catch_b1

    return-void

    :catch_b1
    sput v1, Lcom/gameloft/android2d/iap/IAPLib;->r0:I

    :cond_b3
    return-void
.end method

.method public static checkMessageSent()Z
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->isSMSSent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->isRedeemUnlocked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    if-nez v0, :cond_17

    if-eqz v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public static cleanStatus()V
    .registers 5

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->S0:Z

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->R0:Z

    const/16 v2, 0x3e8

    const/16 v3, 0x270f

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getUniqueCode(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v3, v4

    invoke-static {v4, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    aget-object v2, v3, v1

    const-string v4, "0"

    invoke-static {v2, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    const/4 v0, 0x4

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    aget-object v0, v3, v0

    invoke-static {v0, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->clearTransactionInProgressStatus()V

    return-void
.end method

.method public static clearTransactionInProgressStatus()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->t:Z

    return-void
.end method

.method public static crmRestoreInfoNCI(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "transaction_id"

    const-string v1, "info"

    const-string v2, "id"

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "content_id"

    invoke-virtual {p1, v4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p0, 0x0

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_67

    :cond_2e
    :try_start_2e
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_35} :catch_36

    goto :goto_45

    :catch_36
    :try_start_36
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_45
    if-eqz p0, :cond_5e

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/gameloft/android2d/iap/utils/h;->i(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p0

    if-eqz p0, :cond_5e

    const-string v0, "item_type"

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5e
    sget-object p0, Lcom/gameloft/android2d/iap/IAPLib;->f0:Ljava/util/Set;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_67} :catch_67

    :catch_67
    return-void
.end method

.method public static crmRestoreNCI(Ljava/lang/String;)V
    .registers 7

    const-string v0, "item"

    const-string v1, "item_type"

    const-string v2, "info"

    :try_start_6
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_5c

    :try_start_10
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_14} :catch_15

    goto :goto_1c

    :catch_15
    :try_start_15
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_1c
    const/4 v2, 0x0

    :goto_1d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_5c

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3e

    :cond_34
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_3e
    :goto_3e
    const-string v3, "consumable"

    invoke-static {v4, v3}, Lcom/gameloft/android2d/iap/IAPLib;->GetParamIAPObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "true"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_59

    sget-object v3, Lcom/gameloft/android2d/iap/IAPLib;->e0:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_59

    sget-object v3, Lcom/gameloft/android2d/iap/IAPLib;->e0:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_59} :catch_5c

    :cond_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    :catch_5c
    :cond_5c
    return-void
.end method

.method static downloadHKServices()V
    .registers 3

    const v0, 0x7f1202ee

    :try_start_3
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gameloft/android2d/iap/IAPLib;->q0:Ljava/lang/String;

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->p0:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/utils/Device;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    const v1, 0x7f1202b3

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->n(Ljava/lang/String;)V

    :catch_2a
    :goto_2a
    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->j()Z

    move-result v1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2e} :catch_36

    if-nez v1, :cond_36

    const-wide/16 v1, 0x14

    :try_start_32
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_35} :catch_2a

    goto :goto_2a

    :catch_36
    :cond_36
    return-void
.end method

.method public static downloadManagedContentsList()I
    .registers 3

    :try_start_0
    new-instance v0, Lcom/gameloft/android2d/iap/utils/XPlayer;

    new-instance v1, Lcom/gameloft/android2d/iap/utils/Device;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/utils/Device;-><init>()V

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gameloft/android2d/iap/utils/XPlayer;-><init>(Lcom/gameloft/android2d/iap/utils/Device;Z)V

    const v1, 0x7f1202d7

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/XPlayer;->o(Ljava/lang/String;)V

    :catch_15
    :goto_15
    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->k()Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_26

    if-nez v1, :cond_21

    const-wide/16 v1, 0x14

    :try_start_1d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_20} :catch_15

    goto :goto_15

    :cond_21
    :try_start_21
    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/XPlayer;->g()I

    move-result v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26

    return v0

    :catch_26
    const/4 v0, -0x2

    return v0
.end method

.method static downloadManagedPurchedItems()V
    .registers 12

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetUserCredential()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    const-string v3, "null:null"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    :cond_1b
    const-string v2, ""

    :cond_1d
    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetCRMUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    const-string v6, "index.php"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "purchases/"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "&"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v6, 0x7f12032f

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    const-string v7, "HDIDFV"

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_98

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v11, 0x7f120352

    invoke-static {v11}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_98
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v4

    if-eqz v4, :cond_c1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f12034f

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/gameloft/android2d/iap/IAPLib;->encodeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_c1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "non_consumables"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const v5, 0x7f120390

    :try_start_de
    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v2

    if-eq v2, v10, :cond_f9

    const v2, 0x7f12039b

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f9
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->Get_HDIDFV_Update()I

    move-result v2

    if-eqz v2, :cond_10d

    const v2, 0x7f12039a

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7}, Lcom/gameloft/android2d/iap/utils/Device;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10d
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->NounceGenerator()Ljava/lang/String;

    move-result-object v2

    const v5, 0x7f1203ae

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getDemoCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v5, 0x7f1203b1

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getVersionNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v5, 0x7f1203b0

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/Links;->IAP_GetProjectId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v5, 0x7f1203af

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v5, 0x7f12038a

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const v5, 0x7f12038f

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/gameloft/android2d/iap/IAPLib;->Z:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->j(Ljava/lang/String;)V
    :try_end_164
    .catch Lorg/json/JSONException; {:try_start_de .. :try_end_164} :catch_164

    :catch_164
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v2

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/gameloft/android2d/iap/IAPLib$g;

    invoke-direct {v5, v0}, Lcom/gameloft/android2d/iap/IAPLib$g;-><init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;)V

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/d;)V

    return-void
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    :try_start_0
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_6

    :catch_6
    return-object p0
.end method

.method public static getAccessToken()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static getAgeUser()I
    .registers 1

    sget v0, Lcom/gameloft/android2d/iap/IAPLib;->l0:I

    if-lez v0, :cond_5

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method public static getAnonymousCredential()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannelID()Ljava/lang/String;
    .registers 1

    const v0, 0x7f120320

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getClientID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static getCustomerURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "&"

    if-eqz p0, :cond_a6

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    goto/16 :goto_a6

    :cond_e
    :try_start_e
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getMoneySpent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a5

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const v3, 0x7f1203b8

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([BLjava/lang/String;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/XXTEA;->GetHexString([B)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v5, 0x7f1203b6

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getProfileID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_71

    :cond_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1203b5

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_a5

    :cond_71
    :goto_71
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastCurrency()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/XXTEA;->XXTEA_Encrypt([BLjava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/XXTEA;->GetHexString([B)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f1203b4

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a5
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_a5} :catch_a5

    :catch_a5
    :cond_a5
    :goto_a5
    return-object p0

    :cond_a6
    :goto_a6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDatacenter()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getDemoCode()Ljava/lang/String;
    .registers 1

    const v0, 0x7f120329

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadCode()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->C0:Ljava/lang/String;

    return-object v0
.end method

.method public static getEntryIdItem(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->v()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getError()I
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->G0:I

    return v0
.end method

.method public static getFlowText(ILjava/lang/String;I)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getGameType()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->m0:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public static getGoogleDevKey()Ljava/lang/String;
    .registers 1

    const v0, 0x7f1202b2

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIAPCRMKey()Ljava/lang/String;
    .registers 1

    const v0, 0x7f12029f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->GetIAPKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getIAPLimitationHelp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->o:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p3}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance p3, Landroid/content/res/Configuration;

    invoke-direct {p3}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    sget-object p3, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v0, 0x7f1202bc

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const-string v0, "Load text is error!"

    const-string v1, ""

    if-eqz p3, :cond_57

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f12000f

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_ad

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_ad

    :cond_55
    move-object v0, p0

    goto :goto_ad

    :cond_57
    sget-object p3, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v2, 0x7f1202b8

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_7c

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f12000e

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_ad

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_55

    goto :goto_ad

    :cond_7c
    if-eqz p1, :cond_93

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_85

    goto :goto_93

    :cond_85
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    const v2, 0x7f12000d

    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_a0

    :cond_93
    :goto_93
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p3

    check-cast p3, Landroid/app/Activity;

    const v2, 0x7f120010

    invoke-virtual {p3, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p3

    :goto_a0
    if-eqz p3, :cond_ad

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a9

    goto :goto_ad

    :cond_a9
    invoke-static {p3, p0, p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPLimitationTextFormated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_ad
    :goto_ad
    return-object v0
.end method

.method private static getIAPLimitationTextFormated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-eqz p1, :cond_2e

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p3, :cond_2e

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_2e

    :cond_13
    const-string v1, "NameOfTheGame"

    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "NameOfTheHardCurrency"

    invoke-virtual {p0, p1, p3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p2, :cond_30

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    const-string p1, "NameOfTheSoftCurrency"

    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_30

    :cond_2e
    :goto_2e
    const-string p0, "gameName and hardCurrencyName must be inputed!"

    :cond_30
    :goto_30
    return-object p0
.end method

.method public static getIAPLimitationWarning(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->o:Z

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    new-instance p0, Landroid/content/res/Configuration;

    invoke-direct {p0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const v0, 0x7f120002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIndexOfPricepoint(ILjava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-ne p0, v0, :cond_4

    return v0

    :cond_4
    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->GetItemNumber(Ljava/lang/String;)I

    move-result v1

    const v2, 0x7f1202ce

    :try_start_b
    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2d

    :goto_16
    if-ge v3, v1, :cond_2b

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/gameloft/android2d/iap/utils/h;->t(I)I

    move-result p1

    if-ne p1, p0, :cond_28

    :goto_26
    move p0, v3

    goto :goto_5c

    :cond_28
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2b
    const/4 p0, -0x1

    goto :goto_5c

    :cond_2d
    const v2, 0x7f1202cf

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4e

    :goto_3a
    if-ge v3, v1, :cond_2b

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/gameloft/android2d/iap/utils/h;->u(I)I

    move-result p1

    if-ne p1, p0, :cond_4b

    goto :goto_26

    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_4e
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->H(Ljava/lang/String;)Z

    move-result p1
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_5a} :catch_5d

    if-eqz p1, :cond_2b

    :goto_5c
    return p0

    :catch_5d
    return v0
.end method

.method public static getInstance()Lcom/gameloft/android2d/iap/IAPLib;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    return-object v0
.end method

.method public static getItemCid(ILjava/lang/String;)I
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->q()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return p0

    :catch_23
    const/4 p0, -0x1

    return p0
.end method

.method public static getItemCountDownTime(ILjava/lang/String;)J
    .registers 6

    const-wide/16 v0, -0x1

    :try_start_2
    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v2, v2, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1f

    return-wide v0

    :cond_1f
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->B()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return-wide v0

    :cond_2a
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetServerTime()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/SUtils;->computeCountDownTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v0, Lcom/gameloft/android2d/iap/IAPLib;->B:J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_38} :catch_3e

    sub-long/2addr v2, v0

    sub-long/2addr p0, v2

    const-wide/16 v0, 0x7d0

    add-long/2addr p0, v0

    return-wide p0

    :catch_3e
    return-wide v0
.end method

.method public static getItemCurrencyISOCode(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static getItemGroup(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->w()Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    return-object p0

    :catch_1f
    const-string p0, ""

    return-object p0
.end method

.method public static getItemJson(ILjava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "billing_methods"

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->x()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->A()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2d} :catch_4c

    :try_start_2d
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v2, 0x0

    :goto_32
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_44

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "display_price"

    invoke-virtual {v3, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_44
    invoke-virtual {v1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_47} :catch_47

    :catch_47
    :try_start_47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_4b} :catch_4c

    return-object p0

    :catch_4c
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getItemJson(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string v0, "billing_methods"

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/gameloft/android2d/iap/utils/h;->i(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->x()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->A()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_3e

    :try_start_1f
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v3, 0x0

    :goto_24
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_36

    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "display_price"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_36
    invoke-virtual {v2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_39} :catch_39

    :catch_39
    :try_start_39
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3d} :catch_3e

    return-object p0

    :catch_3e
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getItemPromoEndtime(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    :try_start_2
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1f

    return-object v0

    :cond_1f
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->B()Ljava/lang/String;

    move-result-object p0
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_23} :catch_24

    return-object p0

    :catch_24
    return-object v0
.end method

.method public static getItemRemaining(ILjava/lang/String;)I
    .registers 4

    const/4 v0, -0x1

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    const-string p1, "remaining"

    invoke-virtual {p0, p1}, Lcom/gameloft/android2d/iap/utils/g;->m(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2f

    const-string p1, ""

    if-eq p0, p1, :cond_2f

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result p0
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2e} :catch_2f

    return p0

    :catch_2f
    :cond_2f
    return v0
.end method

.method public static getItemSku(ILjava/lang/String;)I
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->H()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseIntNumber(Ljava/lang/String;)I

    move-result p0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    return p0

    :catch_23
    const/4 p0, -0x1

    return p0
.end method

.method public static getLanguage()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    return-object v0
.end method

.method public static getLastCurrencyISOCode()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastCurrency()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLastPackOrderPurchased()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPackOrderPurchased()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_10

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v0, "0"

    :cond_10
    return-object v0
.end method

.method public static getLocale()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->O0:Ljava/lang/String;

    return-object v0
.end method

.method public static getMainActivity()Landroid/app/Activity;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    return-object v0
.end method

.method public static getMoneySpentInfo()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getMoneySpent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getOSConfirmationLayout(Lcom/gameloft/android2d/iap/utils/g;)I
    .registers 6

    const v0, 0x7f0d00c5

    if-nez p0, :cond_6

    return v0

    :cond_6
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->w()I

    move-result v2

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    :cond_1c
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->L()Ljava/lang/String;

    move-result-object p0

    const v3, 0x7f1202cd

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2f

    :cond_2d
    const/4 p0, 0x1

    goto :goto_30

    :cond_2f
    const/4 p0, 0x0

    :goto_30
    if-eqz p0, :cond_35

    const v0, 0x7f0d00c6

    :cond_35
    const/4 p0, 0x2

    if-eq v2, p0, :cond_4e

    const/4 p0, 0x5

    if-ne v2, p0, :cond_3c

    goto :goto_4e

    :cond_3c
    const/16 p0, 0x11

    if-ne v2, p0, :cond_51

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->L()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidString(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_51

    const v0, 0x7f0d00c7

    goto :goto_51

    :cond_4e
    :goto_4e
    const v0, 0x7f0d00cc

    :cond_51
    :goto_51
    return v0
.end method

.method public static getOldVirtualCurrency(I)J
    .registers 3

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->getOldVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getOldVirtualCurrency(ILjava/lang/String;)J
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->t()J

    move-result-wide p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    goto :goto_26

    :cond_21
    const-wide/16 p0, 0x0

    goto :goto_26

    :catch_24
    const-wide/16 p0, -0x1

    :goto_26
    return-wide p0
.end method

.method public static getPackOrderPurchased(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const v0, 0x7f1202cf

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_1e

    :cond_1b
    const-string p0, "0"

    return-object p0

    :cond_1e
    :goto_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/IAPLib;->getIndexOfPricepoint(ILjava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getResult()I
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    return v0
.end method

.method public static getSamsungDevFlag()I
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->M0:I

    return v0
.end method

.method public static getServerInfo()Lcom/gameloft/android2d/iap/utils/ServerInfo;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    return-object v0
.end method

.method public static getShopProfile()Lcom/gameloft/android2d/iap/utils/h;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    return-object v0
.end method

.method public static getSupportNumber(I)Ljava/lang/String;
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->getSupportNumber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSupportNumber(ILjava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return-object v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->G()Ljava/lang/String;

    move-result-object p0
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_27

    return-object p0

    :catch_27
    return-object v0
.end method

.method public static getUnlockCode()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getUnlockCodeStored()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    return-object v1
.end method

.method public static getUserCredential()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->h:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static getVersionNumber()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->A0:Ljava/lang/String;

    return-object v0
.end method

.method public static getVirtualCurrency(I)J
    .registers 3

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->getVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getVirtualCurrency(ILjava/lang/String;)J
    .registers 3

    :try_start_0
    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz p0, :cond_21

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->s()J

    move-result-wide p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_24

    goto :goto_26

    :cond_21
    const-wide/16 p0, 0x0

    goto :goto_26

    :catch_24
    const-wide/16 p0, -0x1

    :goto_26
    return-wide p0
.end method

.method public static handleActivityResult(IILandroid/content/Intent;)Z
    .registers 3

    const/4 p0, 0x0

    return p0
.end method

.method public static handleDestroyEvent()V
    .registers 0

    return-void
.end method

.method public static handlePauseEvent()V
    .registers 0

    return-void
.end method

.method public static handleRestartEvent()V
    .registers 0

    return-void
.end method

.method public static handleResumeEvent()V
    .registers 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$i;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$i;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static handleStopEvent()V
    .registers 0

    return-void
.end method

.method public static isBillTypeMOEnabled()Z
    .registers 2

    const v0, 0x7f120322

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    return v0

    :cond_1f
    const/4 v0, 0x0

    return v0
.end method

.method public static isCCBilling(Ljava/lang/String;)Z
    .registers 2

    const v0, 0x7f12030d

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const v0, 0x7f12030f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    const v0, 0x7f12030c

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p0, 0x0

    return p0

    :cond_2a
    :goto_2a
    const/4 p0, 0x1

    return p0
.end method

.method public static isConsumeItemsEnabled()Z
    .registers 2

    const v0, 0x7f120323

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static isCreditCardEnabled()Z
    .registers 2

    const v0, 0x7f120324

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static isDisableHTTPProfiles()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->L0:Z

    return v0
.end method

.method public static isDisableSMSProfiles()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->K0:Z

    return v0
.end method

.method public static isInitializeDone()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->H0:Z

    return v0
.end method

.method public static isLegacyBetaStatus()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->h0:Z

    return v0
.end method

.method public static isManagedItem(ILjava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2d

    const-string p1, "1"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2a} :catch_2d

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    :catch_2d
    :cond_2d
    return v0
.end method

.method public static isNeedPreFormation(I)Z
    .registers 2

    const v0, 0x7f1202ce

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->isNeedPreFormation(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isNeedPreFormation(ILjava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gameloft/android2d/iap/utils/g;

    if-nez p0, :cond_1e

    return v0

    :cond_1e
    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gameloft/android2d/iap/billings/a;->C()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    :goto_27
    sget-object v1, Lcom/gameloft/android2d/iap/a;->c:[Ljava/lang/String;

    array-length v2, v1

    if-ge p1, v2, :cond_3b

    if-eqz p0, :cond_38

    aget-object v1, v1, p1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_34} :catch_3b

    if-eqz v1, :cond_38

    const/4 p0, 0x1

    return p0

    :cond_38
    add-int/lit8 p1, p1, 0x1

    goto :goto_27

    :catch_3b
    :cond_3b
    return v0
.end method

.method public static isRedeemUnlocked()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    return v0
.end method

.method public static isSMSBeingSent()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->S0:Z

    return v0
.end method

.method public static isSMSSent()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    return v0
.end method

.method public static isSendSMSStarted()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->R0:Z

    return v0
.end method

.method public static isShenzhoufuBillingEnabled()Z
    .registers 2

    const v0, 0x7f120327

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static isSpecialCarriers(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_2
    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->w0:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_15

    aget-object v2, v2, v1

    invoke-virtual {v2, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_15
    return v0
.end method

.method public static isSupportOEMProfiles()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-boolean v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->J0:Z

    return v0
.end method

.method public static isTransactionInProgress()Z
    .registers 1

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->t:Z

    return v0
.end method

.method public static isUmpBillingEnabled()Z
    .registers 2

    const v0, 0x7f120328

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJADProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public static itemUnlockedSilent()Z
    .registers 1

    const/4 v0, 0x0

    return v0
.end method

.method public static markTransactionInProgressStatus()V
    .registers 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->t:Z

    return-void
.end method

.method public static onDestroy()V
    .registers 1

    :try_start_0
    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->Q:Z

    if-nez v0, :cond_15

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->a()Lcom/gameloft/android2d/iap/utils/e;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/utils/e;->c:Lcom/gameloft/android2d/iap/billings/a;

    instance-of v0, v0, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/gameloft/android2d/iap/billings/googleplaybilling/GoogleBilling;->onDestroy()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_15

    :catch_15
    :cond_15
    return-void
.end method

.method public static promoIsEnabled()Z
    .registers 1

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->x0:Lcom/gameloft/android2d/iap/utils/ServerInfo;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->x()Z

    move-result v0

    return v0
.end method

.method public static redeemCode()V
    .registers 6

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    sget-object v2, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v3, "1"

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android2d/iap/billings/a;->d0(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastFlowType()I

    move-result v3

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->r()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f12029a

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x7

    if-eq v3, v5, :cond_3e

    if-nez v4, :cond_3e

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/gameloft/android2d/iap/billings/a;->p(Ljava/lang/String;)V

    goto :goto_55

    :cond_3e
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v5, Lcom/gameloft/android2d/iap/IAPLib$v;

    invoke-direct {v5, v4, v3, v2}, Lcom/gameloft/android2d/iap/IAPLib$v;-><init>(ZILcom/gameloft/android2d/iap/billings/a;)V

    invoke-virtual {v1, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$w;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$w;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :goto_55
    return-void
.end method

.method public static reset()V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aget-object v1, v0, v1

    invoke-static {v1, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0, v2}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    if-eqz v0, :cond_20

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    goto :goto_24

    :cond_20
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :goto_24
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->cleanStatus()V

    const/16 v0, -0x13

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method

.method public static resumeLastModuleStateAfterRefreshFeed()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    if-eqz v1, :cond_15

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnReLoadFeedCallback()V

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    :cond_15
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->checkMessageSent()Z

    move-result v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :cond_1f
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->CheckPendingVerification()V

    return-void
.end method

.method public static saveMoneySpentInfo()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastPrice()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3c

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12029c

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    goto :goto_3c

    :cond_20
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getMoneySpent()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->parseFloatNumber(Ljava/lang/String;)F

    move-result v1

    :cond_2f
    add-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastProfileID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveMoneySpentAndProfileID(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    nop

    :catch_3c
    :cond_3c
    :goto_3c
    return-void
.end method

.method public static sendItemDeliveryConfirmation()V
    .registers 2

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->b0()V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_12

    :catch_12
    return-void
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->z:Ljava/lang/String;

    return-void
.end method

.method public static setAgeUser(I)V
    .registers 1

    sput p0, Lcom/gameloft/android2d/iap/IAPLib;->l0:I

    return-void
.end method

.method public static setAirPlainMode(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-boolean p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->z0:Z

    return-void
.end method

.method public static setAnonymousCredential(Ljava/lang/String;)V
    .registers 2

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->y:Ljava/lang/String;

    if-eqz p0, :cond_9

    const-string v0, "anonymous"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static setClientID(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->g:Ljava/lang/String;

    return-void
.end method

.method public static setDIAPConfirmationDisabledOnShop(Z)V
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/IAPLib;->G:Z

    return-void
.end method

.method public static setDIAPItemInShop(Z)V
    .registers 1

    sput-boolean p0, Lcom/gameloft/android2d/iap/IAPLib;->H:Z

    return-void
.end method

.method public static setDatacenter(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->i:Ljava/lang/String;

    return-void
.end method

.method public static setError(I)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->G0:I

    return-void
.end method

.method public static setGameType(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->m0:Ljava/lang/String;

    return-void
.end method

.method public static setItemTypeToBuy(Ljava/lang/String;)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-object p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->E0:Ljava/lang/String;

    return-void
.end method

.method public static setLanguage(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    if-eqz v1, :cond_12

    invoke-virtual {v1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->s:Z

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    :cond_12
    iput-object p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->N0:Ljava/lang/String;

    return-void
.end method

.method public static setRedeemUnlocked(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-boolean p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->U0:Z

    return-void
.end method

.method public static setResult(I)V
    .registers 4

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget v1, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    iput p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    const/4 v2, 0x2

    if-eq p0, v2, :cond_d

    const/16 v2, 0xa

    if-ne p0, v2, :cond_10

    :cond_d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->clearTransactionInProgressStatus()V

    :cond_10
    iget p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    const/16 v0, 0xb

    const-string v2, ""

    if-ne p0, v0, :cond_1d

    sput-object v2, Lcom/gameloft/android2d/iap/IAPLib;->T:Ljava/lang/String;

    const/4 p0, 0x0

    sput-boolean p0, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    :cond_1d
    const/4 p0, 0x7

    if-ne v1, p0, :cond_25

    const/16 p0, 0x27

    invoke-static {v2, p0}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_25
    return-void
.end method

.method public static setSMSBeingSent(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-boolean p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->S0:Z

    return-void
.end method

.method public static setSMSSent(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-boolean p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->T0:Z

    return-void
.end method

.method public static setSendSMSStarted(Z)V
    .registers 2

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iput-boolean p0, v0, Lcom/gameloft/android2d/iap/IAPLib;->R0:Z

    return-void
.end method

.method public static setTextForConfirmationScreenWP8(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static setUserCredential(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->h:Ljava/lang/String;

    return-void
.end method

.method public static setUserName(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/gameloft/android2d/iap/IAPLib;->f:Ljava/lang/String;

    return-void
.end method

.method public static showIAPLimitationInforming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    sget-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->o:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getIAPLimtation()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5d

    const-string v0, ""

    if-eqz p1, :cond_2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    goto :goto_2c

    :cond_1e
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f120004

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_2c
    :goto_2c
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const v2, 0x7f120005

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_39
    if-eqz v1, :cond_47

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_47

    :cond_42
    invoke-static {v1, p0, p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPLimitationTextFormated(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_47
    :goto_47
    const-string p0, "Load text is error!"

    :goto_49
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveIAPLimtation(Ljava/lang/String;)V

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance p2, Lcom/gameloft/android2d/iap/IAPLib$x;

    invoke-direct {p2, p0}, Lcom/gameloft/android2d/iap/IAPLib$x;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_5d
    return-void
.end method

.method public static showIAPLimitationWarning(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static showInputSimOperatorDialog()V
    .registers 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Input Fake Sim Operator"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Landroid/widget/EditText;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$b;

    invoke-direct {v2, v1}, Lcom/gameloft/android2d/iap/IAPLib$b;-><init>(Landroid/widget/EditText;)V

    const-string v1, "OK"

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$c;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$c;-><init>()V

    const-string v2, "Cancel"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-nez p1, :cond_6

    const/4 p0, 0x0

    sput-boolean p0, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    return-void

    :cond_6
    const-string v0, "|"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\n"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/gameloft/android2d/iap/IAPLib$d;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/IAPLib$d;-><init>()V

    invoke-virtual {v0, p2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p0, Lcom/gameloft/android2d/iap/IAPLib$e;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/IAPLib$e;-><init>()V

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    const/4 p2, -0x1

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/Window;->setLayout(II)V

    return-void
.end method

.method public static showWarningPermissionDialog(Ljava/lang/String;)V
    .registers 5

    const-string v0, "android.permission.SEND_SMS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const v1, 0x7f12000b

    const-string v2, "\n"

    const-string v3, ""

    if-eqz v0, :cond_3c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f12000a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_70

    :cond_3c
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f120009

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_70
    :goto_70
    new-instance p0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12000c

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$m;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$m;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120007

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$l;

    invoke-direct {v1}, Lcom/gameloft/android2d/iap/IAPLib$l;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const v0, 0x7f120008

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$n;

    invoke-direct {v0}, Lcom/gameloft/android2d/iap/IAPLib$n;-><init>()V

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static verifyRequest(I)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(IZ)Z

    move-result p0

    return p0
.end method

.method public static verifyRequest(IZ)Z
    .registers 4

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUnlockCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1b

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidUnlockCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    if-eqz v0, :cond_4e

    iget p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4e

    const p1, 0x7f1202ea

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->searchForTrxIDFromInbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x27

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_4e
    return v0
.end method

.method public static verifyRequest(Ljava/lang/String;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/IAPLib;->verifyRequest(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static verifyRequest(Ljava/lang/String;Z)Z
    .registers 4

    sget-object p1, Lcom/gameloft/android2d/iap/IAPLib;->j:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getUnlockCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    iget-object v0, p1, Lcom/gameloft/android2d/iap/IAPLib;->F0:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->isValidUnlockCode(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-eqz v0, :cond_4a

    iget p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->B0:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_4a

    const p1, 0x7f1202ea

    invoke-static {p1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/RMS;->getLastBillingType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4a

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ""

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gameloft/android2d/iap/utils/SUtils;->searchForTrxIDFromInbox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x27

    invoke-static {p0, p1}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    :cond_4a
    return v0
.end method

###### Class com.gameloft.android2d.iap.IAPLib.a (com.gameloft.android2d.iap.IAPLib$a)
.class Lcom/gameloft/android2d/iap/IAPLib$a;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationWarning(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$a$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$a$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$a;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$a$b;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$a$b;-><init>(Lcom/gameloft/android2d/iap/IAPLib$a;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.a.DialogInterfaceOnClickListenerC0215a (com.gameloft.android2d.iap.IAPLib$a$a)
.class Lcom/gameloft/android2d/iap/IAPLib$a$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$a$a;->a:Lcom/gameloft/android2d/iap/IAPLib$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.a.b (com.gameloft.android2d.iap.IAPLib$a$b)
.class Lcom/gameloft/android2d/iap/IAPLib$a$b;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$a;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$a;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$a$b;->a:Lcom/gameloft/android2d/iap/IAPLib$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_12

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_12

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    :cond_12
    return v0
.end method

###### Class com.gameloft.android2d.iap.IAPLib.b (com.gameloft.android2d.iap.IAPLib$b)
.class Lcom/gameloft/android2d/iap/IAPLib$b;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showInputSimOperatorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$b;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$b;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/gameloft/android2d/iap/IAPLib;->t0:Ljava/lang/String;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->access$1202(Lcom/gameloft/android2d/iap/IAPLib;Z)Z

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.c (com.gameloft.android2d.iap.IAPLib$c)
.class Lcom/gameloft/android2d/iap/IAPLib$c;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showInputSimOperatorDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/gameloft/android2d/iap/IAPLib;->access$1202(Lcom/gameloft/android2d/iap/IAPLib;Z)Z

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.d (com.gameloft.android2d.iap.IAPLib$d)
.class Lcom/gameloft/android2d/iap/IAPLib$d;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.e (com.gameloft.android2d.iap.IAPLib$e)
.class Lcom/gameloft/android2d/iap/IAPLib$e;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-ne p2, v1, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, v0, :cond_10

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    :cond_10
    return v0
.end method

###### Class com.gameloft.android2d.iap.IAPLib.f (com.gameloft.android2d.iap.IAPLib$f)
.class Lcom/gameloft/android2d/iap/IAPLib$f;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetLimitsValidation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3f

    :try_start_a
    const-string v0, "a4"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result p1

    if-gtz p1, :cond_1f

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    goto :goto_42

    :cond_1f
    const-string p1, "enabled"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3b

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3b

    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    goto :goto_42

    :cond_3b
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V
    :try_end_3e
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_3e} :catch_42

    goto :goto_42

    :cond_3f
    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetLimitsValidationCB(Z)V

    :catch_42
    :goto_42
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.g (com.gameloft.android2d.iap.IAPLib$g)
.class Lcom/gameloft/android2d/iap/IAPLib$g;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->downloadManagedPurchedItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/utils/IABRequestHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$g;->a:Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 12

    const-string v0, "a5"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9e

    const/4 v0, 0x0

    :try_start_c
    const-string v2, "a4"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "a7"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-gtz v4, :cond_24

    goto :goto_95

    :cond_24
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->getInstance()Lcom/gameloft/android2d/iap/utils/IABRequestHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/IABRequestHandler;->f()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f1203b2

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getJSONValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getIAPCRMKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, p1, v5}, Lcom/gameloft/android2d/iap/utils/CRMUtils;->CheckMD5Hash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1
    :try_end_3f
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_3f} :catch_95

    if-eqz p1, :cond_95

    const/4 p1, 0x0

    :try_start_42
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->n()Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_6e

    invoke-virtual {v2}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :cond_58
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gameloft/android2d/iap/utils/g;

    if-eqz v5, :cond_58

    invoke-virtual {v5}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    :cond_6e
    if-eqz p1, :cond_95

    const/4 v2, 0x0

    :goto_71
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_95

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "content_id"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "order_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x1

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Lcom/gameloft/android2d/iap/billings/a;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_92
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_92} :catch_95

    add-int/lit8 v2, v2, 0x1

    goto :goto_71

    :catch_95
    :cond_95
    :goto_95
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetListItemsRestoreCB()V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    sput v0, Lcom/gameloft/android2d/iap/IAPLib;->k:I

    goto :goto_a9

    :cond_9e
    const-string v0, "a6"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, -0x2

    sput p1, Lcom/gameloft/android2d/iap/IAPLib;->k:I

    :goto_a9
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.h (com.gameloft.android2d.iap.IAPLib$h)
.class Lcom/gameloft/android2d/iap/IAPLib$h;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetListItemsRestore()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    const-string v0, "google"

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->d()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.i (com.gameloft.android2d.iap.IAPLib$i)
.class Lcom/gameloft/android2d/iap/IAPLib$i;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->handleResumeEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const v0, 0x7f1202b0

    :try_start_6
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.j (com.gameloft.android2d.iap.IAPLib$j)
.class Lcom/gameloft/android2d/iap/IAPLib$j;
.super Lcom/gameloft/android2d/iap/utils/d;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->CheckWPLimitation(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/gameloft/android2d/iap/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .registers 8

    const-string v0, ""

    const-string v1, "a5"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-ne v1, v4, :cond_54

    const-string v1, "a6"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x193

    if-eq v1, v4, :cond_24

    const/16 v4, 0x1ad

    if-ne v1, v4, :cond_1c

    goto :goto_24

    :cond_1c
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_5a

    :cond_24
    :goto_24
    const-string v1, "a4"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2a
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "message"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_35} :catch_3c

    :try_start_35
    const-string v5, "code"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3d

    goto :goto_3e

    :catch_3c
    move-object v1, v0

    :catch_3d
    move-object v4, v0

    :goto_3e
    if-eqz v1, :cond_4d

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnLimitRequestCallback(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationWarning(Ljava/lang/String;)V

    goto :goto_5a

    :cond_4d
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_5a

    :cond_54
    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_5a
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.k (com.gameloft.android2d.iap.IAPLib$k)
.class Lcom/gameloft/android2d/iap/IAPLib$k;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->CheckPendingVerification()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.l (com.gameloft.android2d.iap.IAPLib$l)
.class Lcom/gameloft/android2d/iap/IAPLib$l;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showWarningPermissionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    const/4 p1, 0x3

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x10

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.m (com.gameloft.android2d.iap.IAPLib$m)
.class Lcom/gameloft/android2d/iap/IAPLib$m;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showWarningPermissionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "package:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.n (com.gameloft.android2d.iap.IAPLib$n)
.class Lcom/gameloft/android2d/iap/IAPLib$n;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showWarningPermissionDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_12

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120006

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_12
    const/4 p1, 0x1

    return p1
.end method

###### Class com.gameloft.android2d.iap.IAPLib.o (com.gameloft.android2d.iap.IAPLib$o)
.class Lcom/gameloft/android2d/iap/IAPLib$o;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->CheckRedeem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1302(Z)Z

    const v0, 0x7f1202b0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->a()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.p (com.gameloft.android2d.iap.IAPLib$p)
.class Lcom/gameloft/android2d/iap/IAPLib$p;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionStatus(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$p;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/h;->j(Ljava/lang/String;)Lcom/gameloft/android2d/iap/utils/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->g()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_GetSubscriptionStatusCB(Ljava/lang/String;)V

    :goto_1e
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.q (com.gameloft.android2d.iap.IAPLib$q)
.class Lcom/gameloft/android2d/iap/IAPLib$q;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->GetFeed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    const/4 v0, 0x1

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->M:Z

    :goto_3
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-wide v3, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x1b7740

    cmp-long v5, v1, v3

    if-lez v5, :cond_50

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$600(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2f

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$600(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_50

    :cond_2f
    sget-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    if-nez v1, :cond_50

    sput-boolean v0, Lcom/gameloft/android2d/iap/IAPLib;->S:Z

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$y;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/gameloft/android2d/iap/IAPLib$y;-><init>(Lcom/gameloft/android2d/iap/IAPLib;Lcom/gameloft/android2d/iap/IAPLib$k;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/gameloft/android2d/iap/IAPLib;->R:J

    :cond_50
    const-wide/16 v1, 0x7d0

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_55} :catch_56

    goto :goto_3

    :catch_56
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r (com.gameloft.android2d.iap.IAPLib$r)
.class Lcom/gameloft/android2d/iap/IAPLib$r;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:I

.field final synthetic d:J


# direct methods
.method constructor <init>(ILjava/lang/String;IJ)V
    .registers 6

    iput p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->a:I

    iput-object p2, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->b:Ljava/lang/String;

    iput p3, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->c:I

    iput-wide p4, p0, Lcom/gameloft/android2d/iap/IAPLib$r;->d:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 24

    move-object/from16 v0, p0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->O()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->N()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    invoke-static {v6}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gameloft/android2d/iap/utils/h;->C()Ljava/lang/String;

    move-result-object v6

    iget v7, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->a:I

    iget-object v8, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->b:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/gameloft/android2d/iap/IAPLib;->GetBillingType(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/gameloft/android2d/iap/IAPLib;->isCCBilling(Ljava/lang/String;)Z

    move-result v7

    const v8, 0x7f12030d

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    if-eqz v7, :cond_79

    const v3, 0x7f120483

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f12014a

    invoke-static {v4}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120146

    invoke-static {v5}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v5

    :cond_79
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$900()Z

    move-result v9

    const-string v10, ""

    if-eqz v9, :cond_9b

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->R()Ljava/lang/String;

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->S()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->Q()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->P()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v22, v5

    move-object v5, v4

    move-object v4, v9

    move-object/from16 v9, v22

    goto :goto_9e

    :cond_9b
    move-object v11, v5

    move-object v5, v10

    move-object v9, v5

    :goto_9e
    const-string v12, "|"

    invoke-virtual {v3, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v13, "line.separator"

    invoke-static {v13}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "\\n"

    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_424

    if-eqz v4, :cond_424

    if-nez v11, :cond_b8

    goto/16 :goto_424

    :cond_b8
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$1000(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result v13

    iget v14, v0, Lcom/gameloft/android2d/iap/IAPLib$r;->c:I

    const v15, 0x7f0d00c6

    if-eqz v14, :cond_cc

    sget-boolean v14, Lcom/gameloft/android2d/iap/IAPLib;->H:Z

    if-eqz v14, :cond_cc

    if-ne v13, v15, :cond_cc

    const v13, 0x7f0d00c5

    :cond_cc
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v14

    iget v14, v14, Landroid/content/res/Configuration;->orientation:I

    const/4 v15, 0x1

    if-ne v14, v15, :cond_e0

    const/16 v14, 0xa

    goto :goto_e1

    :cond_e0
    const/4 v14, 0x7

    :goto_e1
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    const/4 v15, 0x0

    iput-object v15, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    new-instance v15, Landroid/app/Dialog;

    move-object/from16 v19, v3

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    invoke-direct {v15, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v15, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    const/4 v15, 0x0

    invoke-direct {v8, v15}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v8}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->setContentView(I)V

    const v3, 0x7f0d00c7

    const v8, 0x7f0d00c8

    if-eq v13, v3, :cond_1d8

    if-ne v13, v8, :cond_12d

    goto/16 :goto_1d8

    :cond_12d
    if-eqz v7, :cond_1d3

    const v13, 0x7f0d00c9

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->setContentView(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v13, 0x7f0a0010

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v13, 0x7f0a000d

    invoke-virtual {v3, v13}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v13

    iget-object v13, v13, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a000e

    invoke-virtual {v13, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RadioButton;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v13

    iget-object v13, v13, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v15, 0x7f0a000f

    invoke-virtual {v13, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/RadioButton;

    const v15, 0x7f12030f

    invoke-static {v15}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1, v15}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v15

    move-object/from16 v21, v6

    const/16 v6, 0x8

    if-eqz v15, :cond_192

    const-string v15, "PayPal"

    invoke-virtual {v8, v15}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    const/4 v15, 0x1

    invoke-virtual {v8, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_196

    :cond_192
    const/4 v15, 0x1

    invoke-virtual {v8, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_196
    const v8, 0x7f12030c

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ac

    const-string v8, "Amazon"

    invoke-virtual {v13, v8}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v13, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1af

    :cond_1ac
    invoke-virtual {v13, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_1af
    const v8, 0x7f12030d

    invoke-static {v8}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/gameloft/android2d/iap/utils/g;->O(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1ca

    const v6, 0x7f120183

    invoke-static {v6}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v15}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1cd

    :cond_1ca
    invoke-virtual {v3, v6}, Landroid/widget/RadioButton;->setVisibility(I)V

    :goto_1cd
    move-object/from16 v3, v19

    const v13, 0x7f0d00c9

    goto :goto_204

    :cond_1d3
    move-object/from16 v21, v6

    move-object/from16 v3, v19

    goto :goto_204

    :cond_1d8
    :goto_1d8
    move-object/from16 v21, v6

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v6, 0x7f0a0428

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v6, 0x41800000    # 16.0f

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->L()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->K()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v3, v8

    :goto_204
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v6

    iget-object v6, v6, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a00cd

    invoke-virtual {v6, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v15, 0x7f0a00ce

    invoke-virtual {v8, v15}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Button;

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v8, v15}, Landroid/widget/Button;->setTextSize(F)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v15

    iget-object v15, v15, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    move-object/from16 v17, v3

    const v3, 0x7f0a0427

    invoke-virtual {v15, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v15

    iget-object v15, v15, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v0, 0x7f0a0019

    invoke-virtual {v15, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v5

    const-string v5, "AR"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    const/4 v15, 0x5

    if-eqz v5, :cond_270

    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setGravity(I)V

    :cond_270
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v15, "window"

    invoke-virtual {v5, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/WindowManager;

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v15, 0x2bc

    move-object/from16 v20, v9

    if-le v5, v15, :cond_2bc

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v15

    iget v15, v15, Landroid/content/res/Configuration;->orientation:I

    const/4 v9, 0x2

    if-ne v15, v9, :cond_2bc

    const v9, 0x7f0d00cc

    if-eq v13, v9, :cond_2b6

    const v9, 0x7f0d00c6

    if-eq v13, v9, :cond_2b6

    const v9, 0x7f0d00c8

    if-ne v13, v9, :cond_2af

    goto :goto_2b6

    :cond_2af
    mul-int/lit8 v5, v5, 0x46

    div-int/lit8 v5, v5, 0x64

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_2bc

    :cond_2b6
    :goto_2b6
    mul-int/lit8 v5, v5, 0x5a

    div-int/lit8 v5, v5, 0x64

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2bc
    :goto_2bc
    const-string v0, "0"

    if-nez v7, :cond_2e5

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2e5

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2e5

    const v5, 0x7f0d00c8

    if-eq v13, v5, :cond_2e5

    const v5, 0x7f0d00c7

    if-eq v13, v5, :cond_2e5

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/billings/a;->M()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2e5

    invoke-virtual {v2, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2e7

    :cond_2e5
    move-object/from16 v2, v17

    :goto_2e7
    const v5, 0x7f0d00cc

    if-eq v13, v5, :cond_2fb

    const v5, 0x7f0d00c6

    if-eq v13, v5, :cond_2fb

    const v5, 0x7f0d00c8

    if-ne v13, v5, :cond_2f7

    goto :goto_2fb

    :cond_2f7
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_2ff

    :cond_2fb
    :goto_2fb
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_2ff
    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-static {v2, v1}, Lcom/gameloft/android2d/iap/IAPLib;->CorrectTextConfirmation(Ljava/lang/String;Lcom/gameloft/android2d/iap/utils/g;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v8, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$900()Z

    move-result v2

    if-eqz v2, :cond_32c

    move-object/from16 v4, v18

    move-object/from16 v5, v20

    invoke-static {v5, v4}, Lcom/gameloft/android2d/iap/IAPLib;->setTextForConfirmationScreenWP8(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32c
    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$r$a;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v7}, Lcom/gameloft/android2d/iap/IAPLib$r$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;Z)V

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lcom/gameloft/android2d/iap/IAPLib$r$b;

    invoke-direct {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$b;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v6, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    new-instance v4, Lcom/gameloft/android2d/iap/IAPLib$r$c;

    invoke-direct {v4, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$c;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    const v2, 0x7f0d00cc

    if-eq v13, v2, :cond_35b

    const v2, 0x7f0d00c6

    if-eq v13, v2, :cond_35b

    const v2, 0x7f0d00c8

    if-ne v13, v2, :cond_423

    :cond_35b
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    iget-object v2, v2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v4, 0x7f0a00cb

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/utils/g;->C()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38e

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_38e

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gameloft/android2d/iap/utils/h;->D()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_38e

    move-object v6, v4

    goto :goto_390

    :cond_38e
    move-object/from16 v6, v21

    :goto_390
    invoke-virtual {v6, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v5, 0x0

    sput-boolean v5, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    new-instance v5, Lcom/gameloft/android2d/iap/IAPLib$r$d;

    invoke-direct {v5, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$d;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0d00c6

    if-eq v13, v5, :cond_3b5

    const v5, 0x7f0d00c8

    if-ne v13, v5, :cond_423

    :cond_3b5
    if-eqz v1, :cond_3d4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3d4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/h;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3d4

    move-object v4, v0

    :cond_3d4
    invoke-virtual {v4, v12, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextSize(F)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v2, 0x7f0a0426

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/text/style/UnderlineSpan;

    invoke-direct {v4}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v5, 0x33

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v6, v0, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$r$e;

    invoke-direct {v0, v3}, Lcom/gameloft/android2d/iap/IAPLib$r$e;-><init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_423
    return-void

    :cond_424
    :goto_424
    move-object v3, v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    invoke-static {v0, v1, v4, v5}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r.a (com.gameloft.android2d.iap.IAPLib$r$a)
.class Lcom/gameloft/android2d/iap/IAPLib$r$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;Z)V
    .registers 3

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->b:Lcom/gameloft/android2d/iap/IAPLib$r;

    iput-boolean p2, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-boolean p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->a:Z

    if-eqz p1, :cond_8d

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v1

    iget-object v1, v1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v2, 0x7f0a0010

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0a000d

    if-ne v1, v2, :cond_60

    const v1, 0x7f12030d

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    goto :goto_8d

    :cond_60
    const v2, 0x7f0a000e

    if-ne v1, v2, :cond_77

    const v1, 0x7f12030f

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    goto :goto_8d

    :cond_77
    const v2, 0x7f0a000f

    if-ne v1, v2, :cond_8d

    const v1, 0x7f12030c

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gameloft/android2d/iap/billings/a;->f0(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/g;->S(Ljava/lang/String;)V

    :cond_8d
    :goto_8d
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$a;->b:Lcom/gameloft/android2d/iap/IAPLib$r;

    iget-wide v1, v1, Lcom/gameloft/android2d/iap/IAPLib$r;->d:J

    invoke-static {p1, v0, v1, v2}, Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r.b (com.gameloft.android2d.iap.IAPLib$r$b)
.class Lcom/gameloft/android2d/iap/IAPLib$r$b;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$b;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x64

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r.c (com.gameloft.android2d.iap.IAPLib$r$c)
.class Lcom/gameloft/android2d/iap/IAPLib$r$c;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$c;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_20

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_20

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p2

    iget-object p2, p2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->cancel()V

    const/16 p2, 0xa

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p2, -0x64

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAP_CallBack;->IAP_OnPurchaseRequestCancelCallback()V

    :cond_20
    return p1
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r.d (com.gameloft.android2d.iap.IAPLib$r$d)
.class Lcom/gameloft/android2d/iap/IAPLib$r$d;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$d;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    sget-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    if-nez p1, :cond_62

    const/4 p1, 0x1

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->w()I

    move-result p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014a

    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_53

    const p1, 0x7f120147

    invoke-static {p1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/h;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetTermsAndConditions()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.r.e (com.gameloft.android2d.iap.IAPLib$r$e)
.class Lcom/gameloft/android2d/iap/IAPLib$r$e;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$r;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$r;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$r;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$r$e;->a:Lcom/gameloft/android2d/iap/IAPLib$r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    sget-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    if-nez p1, :cond_62

    const/4 p1, 0x1

    sput-boolean p1, Lcom/gameloft/android2d/iap/IAPLib;->u0:Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->w()I

    move-result p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014a

    invoke-static {v1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x11

    if-ne p1, v2, :cond_53

    const p1, 0x7f120147

    invoke-static {p1, v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_53
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->getShopProfile()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/utils/h;->C()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetTermsAndConditions()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->showTermAndConditionDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.s (com.gameloft.android2d.iap.IAPLib$s)
.class Lcom/gameloft/android2d/iap/IAPLib$s;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->SendRequest(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.t (com.gameloft.android2d.iap.IAPLib$t)
.class Lcom/gameloft/android2d/iap/IAPLib$t;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->SendRequestExec(ILjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:I

.field final synthetic c:J


# direct methods
.method constructor <init>(Ljava/lang/String;IJ)V
    .registers 5

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    iput p2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iput-wide p3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->c:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v0

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/utils/h;->k(Ljava/lang/String;)Ljava/util/Hashtable;

    move-result-object v0

    iget v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gameloft/android2d/iap/utils/g;

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->u()Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v1

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->h()I

    move-result v2

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/a;->i(Lcom/gameloft/android2d/iap/utils/g;)I

    move-result v3

    const/16 v4, -0x3e8

    if-ne v3, v4, :cond_42

    return-void

    :cond_42
    const/16 v4, 0x193

    if-eq v3, v4, :cond_157

    const/16 v4, 0x1ad

    if-ne v3, v4, :cond_4c

    goto/16 :goto_157

    :cond_4c
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$702(Lcom/gameloft/android2d/iap/IAPLib;I)I

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$802(Lcom/gameloft/android2d/iap/IAPLib;Ljava/lang/String;)Ljava/lang/String;

    sget-object v3, Lcom/gameloft/android2d/iap/a;->b:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v4, v3, v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    invoke-static {v5}, Lcom/gameloft/android2d/iap/IAPLib;->access$700(Lcom/gameloft/android2d/iap/IAPLib;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v4

    invoke-static {v4}, Lcom/gameloft/android2d/iap/IAPLib;->access$800(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rmsSave(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->A()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPrice(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastProfileID(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->v()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastCurrency(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->c:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_9e

    goto :goto_a6

    :cond_9e
    iget v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v4, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/IAPLib;->getVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v3

    :goto_a6
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastVirtualCurrency(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->e()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastOfflineItems([Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->K()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/RMS;->saveVerificationInformation(Lcom/gameloft/android2d/iap/billings/a;)V

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastFlowType(I)V

    iget v2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->getPackOrderPurchased(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPackOrderPurchased(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->v()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->getItemJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3a

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/gameloft/android2d/iap/billings/a;->c()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x34

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    iget v2, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->getOldVirtualCurrency(ILjava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x36

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/RMS;->rms_SaveInfo(Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gameloft/android2d/iap/billings/a;->a0(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/utils/g;->x()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/gameloft/android2d/iap/billings/a;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1202cd

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_126

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetBundleItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedBundleInfo(Ljava/lang/String;)V

    goto :goto_153

    :cond_126
    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1202d0

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionItemInfo(Ljava/lang/String;)V

    iget v0, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->b:I

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$t;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/gameloft/android2d/iap/IAPLib;->GetSubscriptionRewardItemInfo(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/RMS;->saveLastPurchasedSubscriptionRewardItemInfo(Ljava/lang/String;)V

    :cond_153
    :goto_153
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void

    :cond_157
    :goto_157
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetLimitationMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationWarning(Ljava/lang/String;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.u (com.gameloft.android2d.iap.IAPLib$u)
.class Lcom/gameloft/android2d/iap/IAPLib$u;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->VerifyProcess(Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$u;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/gameloft/android2d/iap/IAPLib$u;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetTransactionID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->h()V

    goto :goto_18

    :cond_14
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/gameloft/android2d/iap/billings/a;->k(Z)V

    :goto_18
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.v (com.gameloft.android2d.iap.IAPLib$v)
.class Lcom/gameloft/android2d/iap/IAPLib$v;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->redeemCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/gameloft/android2d/iap/billings/a;


# direct methods
.method constructor <init>(ZILcom/gameloft/android2d/iap/billings/a;)V
    .registers 4

    iput-boolean p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->a:Z

    iput p2, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->b:I

    iput-object p3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30

    const v0, 0x7f120157

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014c

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120149

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_30
    const v0, 0x7f120156

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f12014b

    invoke-static {v1}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f120148

    invoke-static {v2}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v2

    :goto_45
    iget-boolean v3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->a:Z

    const/4 v4, 0x7

    if-eqz v3, :cond_61

    iget v3, p0, Lcom/gameloft/android2d/iap/IAPLib$v;->b:I

    if-eq v3, v4, :cond_61

    const v0, 0x7f12046a

    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getLocalizedString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "\\n"

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_61
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_83

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$1100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "th"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_83

    const-string v3, "|"

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_83
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_96

    const/16 v4, 0xa

    :cond_96
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    const/4 v6, 0x0

    iput-object v6, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    new-instance v7, Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->P0:Landroid/app/Activity;

    invoke-direct {v7, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v7, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v3, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v3, 0x7f0d00c5

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    iget-object v5, v5, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v5, v3}, Landroid/app/Dialog;->setContentView(I)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v3, v6}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v3

    iget-object v3, v3, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v5, 0x7f0a00cd

    invoke-virtual {v3, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v5

    iget-object v5, v5, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v7, 0x7f0a00ce

    invoke-virtual {v5, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v7

    iget-object v7, v7, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v8, 0x7f0a0427

    invoke-virtual {v7, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v8

    iget-object v8, v8, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v9, 0x7f0a0019

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v9

    iget-object v9, v9, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    const v10, 0x7f0a00cf

    invoke-virtual {v9, v10}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v9

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    const/16 v10, 0x2bc

    if-le v9, v10, :cond_166

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v10

    iget v10, v10, Landroid/content/res/Configuration;->orientation:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_166

    mul-int/lit8 v9, v9, 0x46

    div-int/lit8 v9, v9, 0x64

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_166
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    const/high16 v4, 0x41800000    # 16.0f

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-static {}, Landroid/text/method/ScrollingMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$v$a;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v5, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/gameloft/android2d/iap/IAPLib$v$b;

    invoke-direct {v0, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$b;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$v$c;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$v$c;-><init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.v.a (com.gameloft.android2d.iap.IAPLib$v$a)
.class Lcom/gameloft/android2d/iap/IAPLib$v$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$v;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$a;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$a;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib$v;->c:Lcom/gameloft/android2d/iap/billings/a;

    invoke-virtual {p1}, Lcom/gameloft/android2d/iap/billings/a;->Z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gameloft/android2d/iap/billings/a;->p(Ljava/lang/String;)V

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.v.b (com.gameloft.android2d.iap.IAPLib$v$b)
.class Lcom/gameloft/android2d/iap/IAPLib$v$b;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$v;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$b;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p1

    iget-object p1, p1, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p1, -0x64

    invoke-static {p1}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.v.c (com.gameloft.android2d.iap.IAPLib$v$c)
.class Lcom/gameloft/android2d/iap/IAPLib$v$c;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$v;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$v;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$v;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$v$c;->a:Lcom/gameloft/android2d/iap/IAPLib$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    const/4 p1, 0x1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1c

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-ne p2, p1, :cond_1c

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object p2

    iget-object p2, p2, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {p2}, Landroid/app/Dialog;->dismiss()V

    const/4 p2, 0x2

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/16 p2, -0x64

    invoke-static {p2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :cond_1c
    return p1
.end method

###### Class com.gameloft.android2d.iap.IAPLib.w (com.gameloft.android2d.iap.IAPLib$w)
.class Lcom/gameloft/android2d/iap/IAPLib$w;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->redeemCode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :cond_0
    :goto_0
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->access$500()Lcom/gameloft/android2d/iap/IAPLib;

    move-result-object v0

    iget-object v0, v0, Lcom/gameloft/android2d/iap/IAPLib;->Q0:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.x (com.gameloft.android2d.iap.IAPLib$x)
.class Lcom/gameloft/android2d/iap/IAPLib$x;
.super Ljava/lang/Thread;
.source "IAPLib.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib;->showIAPLimitationInforming(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$x;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/gameloft/android2d/iap/utils/SUtils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/gameloft/android2d/iap/IAPLib$x;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/gameloft/android2d/iap/IAPLib$x$a;

    invoke-direct {v1, p0}, Lcom/gameloft/android2d/iap/IAPLib$x$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$x;)V

    const-string v2, "OK"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.x.a (com.gameloft.android2d.iap.IAPLib$x$a)
.class Lcom/gameloft/android2d/iap/IAPLib$x$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$x;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$x;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$x;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$x$a;->a:Lcom/gameloft/android2d/iap/IAPLib$x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.y (com.gameloft.android2d.iap.IAPLib$y)
.class Lcom/gameloft/android2d/iap/IAPLib$y;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gameloft/android2d/iap/IAPLib;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "y"
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib;


# direct methods
.method private constructor <init>(Lcom/gameloft/android2d/iap/IAPLib;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gameloft/android2d/iap/IAPLib;Lcom/gameloft/android2d/iap/IAPLib$k;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/gameloft/android2d/iap/IAPLib$y;-><init>(Lcom/gameloft/android2d/iap/IAPLib;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    const/4 v0, -0x6

    const/16 v1, 0xb

    :try_start_3
    invoke-static {}, Lcom/gameloft/android2d/iap/utils/Device;->hasConnectivity()Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_67

    :cond_a
    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202bc

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202ba

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202b8

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202b9

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202ca

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_64

    sget-object v2, Lcom/gameloft/android2d/iap/IAPLib;->p:Ljava/lang/String;

    const v3, 0x7f1202bd

    invoke-static {v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    :cond_64
    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->downloadHKServices()V

    :cond_67
    :goto_67
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$002(J)J

    iget-object v2, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$100(Lcom/gameloft/android2d/iap/IAPLib;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->c(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b8

    iget-object v2, p0, Lcom/gameloft/android2d/iap/IAPLib$y;->a:Lcom/gameloft/android2d/iap/IAPLib;

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->access$200(Lcom/gameloft/android2d/iap/IAPLib;)Lcom/gameloft/android2d/iap/utils/ServerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/ServerInfo;->b()Lcom/gameloft/android2d/iap/utils/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gameloft/android2d/iap/utils/h;->I()Z

    move-result v2

    if-nez v2, :cond_b0

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetPromoEndTime()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->GetServerTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/utils/SUtils;->computeCountDownTime(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/gameloft/android2d/iap/IAPLib;->access$302(J)J

    invoke-static {}, Lcom/gameloft/android2d/iap/IAPLib;->resumeLastModuleStateAfterRefreshFeed()V

    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/gameloft/android2d/iap/IAPLib$y$a;

    invoke-direct {v3, p0}, Lcom/gameloft/android2d/iap/IAPLib$y$a;-><init>(Lcom/gameloft/android2d/iap/IAPLib$y;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_c5

    :cond_b0
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    const/4 v2, -0x7

    invoke-static {v2}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    goto :goto_c5

    :cond_b8
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_be} :catch_bf

    goto :goto_c5

    :catch_bf
    invoke-static {v1}, Lcom/gameloft/android2d/iap/IAPLib;->setResult(I)V

    invoke-static {v0}, Lcom/gameloft/android2d/iap/IAPLib;->setError(I)V

    :goto_c5
    return-void
.end method

###### Class com.gameloft.android2d.iap.IAPLib.y.a (com.gameloft.android2d.iap.IAPLib$y$a)
.class Lcom/gameloft/android2d/iap/IAPLib$y$a;
.super Ljava/lang/Object;
.source "IAPLib.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gameloft/android2d/iap/IAPLib$y;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/gameloft/android2d/iap/IAPLib$y;


# direct methods
.method constructor <init>(Lcom/gameloft/android2d/iap/IAPLib$y;)V
    .registers 2

    iput-object p1, p0, Lcom/gameloft/android2d/iap/IAPLib$y$a;->a:Lcom/gameloft/android2d/iap/IAPLib$y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Landroid/os/Looper;->prepare()V

    const v0, 0x7f1202b0

    :try_start_6
    invoke-static {v0}, Lcom/gameloft/android2d/iap/utils/SUtils;->getStringRS(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gameloft/android2d/iap/billings/BillingFactory;->CreateBilling(Ljava/lang/String;)Lcom/gameloft/android2d/iap/billings/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gameloft/android2d/iap/billings/a;->b()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
