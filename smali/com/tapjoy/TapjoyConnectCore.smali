###### Class com.tapjoy.TapjoyConnectCore (com.tapjoy.TapjoyConnectCore)
.class public Lcom/tapjoy/TapjoyConnectCore;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/TapjoyConnectCore$a;
    }
.end annotation


# static fields
.field public static A:Ljava/lang/String;

.field public static A0:Ljava/lang/Integer;

.field public static B:Ljava/lang/String;

.field public static B0:Ljava/lang/Integer;

.field public static C:Ljava/lang/String;

.field public static C0:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static D0:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static E0:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static F0:Z

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Z

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/util/Map;

.field public static Q:J

.field public static R:Z

.field public static S:Landroid/content/pm/PackageManager;

.field public static T:Lcom/tapjoy/g0;

.field public static U:I

.field public static V:I

.field public static W:Ljava/lang/String;

.field public static X:Z

.field public static Y:Ljava/lang/String;

.field public static Z:Ljava/lang/String;

.field public static a:Landroid/content/Context;

.field public static a0:Ljava/lang/String;

.field public static b:Lcom/tapjoy/TapjoyConnectCore;

.field public static b0:Ljava/util/Hashtable;

.field public static c:Lcom/tapjoy/j0;

.field public static final c0:Ljava/util/concurrent/ConcurrentHashMap;

.field public static d:Lcom/tapjoy/n;

.field public static d0:Ljava/lang/String;

.field public static e:Lcom/tapjoy/TJSetUserIDListener;

.field public static e0:Ljava/lang/String;

.field public static f:Z

.field public static f0:Ljava/lang/String;

.field public static g:Z

.field public static g0:Ljava/lang/String;

.field public static final h:Ljava/util/Vector;

.field public static h0:Ljava/lang/Integer;

.field public static i:Ljava/lang/String;

.field public static i0:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static j0:Ljava/lang/Long;

.field public static k:Ljava/lang/String;

.field public static k0:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static l0:Ljava/lang/Integer;

.field public static m:Ljava/lang/String;

.field public static m0:Ljava/util/HashSet;

.field public static n:Ljava/lang/String;

.field public static n0:Ljava/lang/Integer;

.field public static o:Ljava/lang/String;

.field public static o0:Ljava/lang/Integer;

.field public static p:Ljava/lang/String;

.field public static p0:Ljava/lang/Integer;

.field public static q:Ljava/lang/String;

.field public static q0:Ljava/lang/Long;

.field public static r:Ljava/lang/String;

.field public static r0:Ljava/lang/Long;

.field public static s:Ljava/lang/String;

.field public static s0:Ljava/lang/Long;

.field public static t:Ljava/lang/String;

.field public static t0:Ljava/lang/Long;

.field public static u:I

.field public static u0:Ljava/lang/String;

.field public static v:F

.field public static v0:Ljava/lang/Integer;

.field public static w:I

.field public static w0:Ljava/lang/Double;

.field public static x:Ljava/lang/String;

.field public static x0:Ljava/lang/Double;

.field public static y:Ljava/lang/String;

.field public static y0:Ljava/lang/Long;

.field public static z:Ljava/lang/String;

.field public static z0:Ljava/lang/Integer;


# instance fields
.field public G0:Z

.field public H0:Z

.field public final I0:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/Vector;

    sget-object v1, Lcom/tapjoy/d0;->a:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/Vector;

    const-string v0, ""

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->j:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->k:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    const/4 v1, 0x1

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->u:I

    const/high16 v2, 0x3f800000    # 1.0f

    sput v2, Lcom/tapjoy/TapjoyConnectCore;->v:F

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->w:I

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->B:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->C:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    const-string v1, "native"

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->K:Z

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/util/Map;

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/tapjoy/TapjoyConnectCore;->Q:J

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->U:I

    sput v1, Lcom/tapjoy/TapjoyConnectCore;->V:I

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->a0:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/c0;->c:Ljava/util/Hashtable;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->F0:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->G0:Z

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->H0:Z

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->I0:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a(ILjava/lang/String;)V
    .registers 6

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/v1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    new-instance v0, Lcom/tapjoy/p0;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/p0;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .registers 14

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    const-string v1, "/"

    const-string v2, "TJC_OPTION_SERVICE_URL"

    const-string v3, "TapjoyConnect"

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tapjoy/TJPrivacyPolicy;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tapjoy/TJUserParameters;->f(Landroid/content/Context;)V

    sget-object v4, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    invoke-virtual {v4, p0}, Lcom/tapjoy/internal/ca;->b(Landroid/content/Context;)V

    new-instance p0, Lcom/tapjoy/g0;

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/tapjoy/g0;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->c:Lcom/tapjoy/j0;

    if-nez p0, :cond_37

    new-instance p0, Lcom/tapjoy/j0;

    invoke-direct {p0}, Lcom/tapjoy/j0;-><init>()V

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->c:Lcom/tapjoy/j0;

    :cond_37
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    if-nez p0, :cond_42

    new-instance p0, Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/Hashtable;-><init>()V

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    :cond_42
    const/4 p0, 0x0

    :try_start_43
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_dd

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    if-eqz v4, :cond_ba

    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_ba

    sget-object v5, Lcom/tapjoy/c0;->a:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_5d
    if-ge v7, v6, :cond_b4

    aget-object v8, v5, v7

    iget-object v9, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tapjoy."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found manifest flag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a2

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ac

    :cond_a2
    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_ac

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_ac
    sget-object v10, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v10, v8, v9}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b1
    add-int/lit8 v7, v7, 0x1

    goto :goto_5d

    :cond_b4
    const-string v4, "Metadata successfully loaded"

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_dd

    :cond_ba
    const-string v4, "No metadata present."

    invoke-static {v3, v4}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_bf} :catch_c0

    goto :goto_dd

    :catch_c0
    move-exception v4

    new-instance v5, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v6, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error reading manifest meta-data -- "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v3, v5}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    :cond_dd
    :goto_dd
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "raw/tapjoy_config"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_13d

    :try_start_f2
    new-instance v5, Ljava/util/Properties;

    invoke-direct {v5}, Ljava/util/Properties;-><init>()V

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/util/Dictionary;->keys()Ljava/util/Enumeration;

    move-result-object v4

    :goto_108
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_10c} :catch_13c

    if-eqz v6, :cond_13d

    :try_start_10e
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/Dictionary;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_126

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_130

    :cond_126
    invoke-virtual {v8, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_130

    invoke-virtual {v8, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :cond_130
    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v9, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_135
    .catch Ljava/lang/ClassCastException; {:try_start_10e .. :try_end_135} :catch_136
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_135} :catch_13c

    goto :goto_108

    :catch_136
    :try_start_136
    const-string v6, "Error parsing configuration properties in tapjoy_config.txt"

    invoke-static {v3, v6}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_13b} :catch_13c

    goto :goto_108

    :catch_13c
    nop

    :cond_13d
    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    if-eqz v0, :cond_2bb

    :try_start_14b
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_174

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_164
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_174

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ActivityInfo;

    invoke-static {v4}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/pm/ActivityInfo;)V
    :try_end_173
    .catch Ljava/lang/Exception; {:try_start_14b .. :try_end_173} :catch_2b3

    goto :goto_164

    :cond_174
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    const-string v6, "Missing "

    if-eqz v4, :cond_1c8

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    if-ne p0, v5, :cond_1a6

    new-instance p0, Lcom/tapjoy/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dependency class in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a6
    new-instance p0, Lcom/tapjoy/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dependency classes in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1c8
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sget-object v4, Lcom/tapjoy/d0;->b:[Ljava/lang/String;

    array-length v8, v4

    const/4 v9, 0x0

    :goto_1d1
    if-ge v9, v8, :cond_1ee

    aget-object v10, v4, v9

    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    sget-object v12, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_1e5

    const/4 v11, 0x0

    goto :goto_1e6

    :cond_1e5
    const/4 v11, 0x1

    :goto_1e6
    if-nez v11, :cond_1eb

    invoke-virtual {v0, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_1eb
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d1

    :cond_1ee
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_234

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result p0

    if-ne p0, v5, :cond_212

    new-instance p0, Lcom/tapjoy/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing 1 permission in manifest: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_212
    new-instance p0, Lcom/tapjoy/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " permissions in manifest: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_234
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_278

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    const-string v6, "WARNING -- "

    if-ne v4, v5, :cond_260

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permission was not found in manifest. The exclusion of this permission could cause problems."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_278

    :cond_260
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " permissions were not found in manifest. The exclusion of these permissions could cause problems."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_278
    :goto_278
    :try_start_278
    const-class v0, Lcom/tapjoy/k;
    :try_end_27a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_278 .. :try_end_27a} :catch_2ab

    :try_start_27a
    new-array v4, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Boolean;

    aput-object v5, v4, p0

    const-string v5, "b"

    invoke-virtual {v0, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_285
    .catch Ljava/lang/NoSuchMethodException; {:try_start_27a .. :try_end_285} :catch_2a3

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_29d

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "true"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29d

    const-string v0, "Skipping integration check for Google Play Services and Advertising ID. Do this only if you do not have access to Google Play Services."

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2bb

    :cond_29d
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->a()V

    goto :goto_2bb

    :catch_2a3
    new-instance p0, Lcom/tapjoy/i0;

    const-string v0, "Try configuring Proguard or other code obfuscators to ignore com.tapjoy classes. Visit http://dev.tapjoy.comfor more information."

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2ab
    new-instance p0, Lcom/tapjoy/i0;

    const-string v0, "ClassNotFoundException: com.tapjoy.TJAdUnitJSBridge was not found."

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_2b3
    new-instance p0, Lcom/tapjoy/i0;

    const-string v0, "Error while getting package info."

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2bb
    :goto_2bb
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/f1;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    if-eqz v0, :cond_2cb

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    :cond_2cb
    :try_start_2cb
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, p0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;
    :try_end_2db
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2cb .. :try_end_2db} :catch_4d1

    const-string v0, "android"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v0, "13.3.0"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    const-string v0, "1.1.4"

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    :try_start_2f5
    new-instance v0, Lcom/tapjoy/e0;

    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-direct {v0, v4}, Lcom/tapjoy/e0;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tapjoy/e0;->a()I

    move-result v4

    sput v4, Lcom/tapjoy/TapjoyConnectCore;->u:I

    invoke-virtual {v0}, Lcom/tapjoy/e0;->b()F

    move-result v4

    sput v4, Lcom/tapjoy/TapjoyConnectCore;->v:F

    invoke-virtual {v0}, Lcom/tapjoy/e0;->c()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->w:I
    :try_end_30e
    .catch Ljava/lang/Exception; {:try_start_2f5 .. :try_end_30e} :catch_30f

    goto :goto_325

    :catch_30f
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error getting screen density/dimensions/layout: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_325
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_364

    :try_start_331
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tapjoy/TapjoyConnectCore;->B:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_364

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_351

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_364

    :cond_351
    const/4 v4, 0x3

    invoke-virtual {v0, p0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->C:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;
    :try_end_35e
    .catch Ljava/lang/SecurityException; {:try_start_331 .. :try_end_35e} :catch_35f

    goto :goto_364

    :catch_35f
    const-string p0, "Error accessing network operator info"

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_364
    :goto_364
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tapjoy/internal/f1;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->k:Ljava/lang/String;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/tapjoy/internal/f1;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->l:Ljava/lang/String;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Tapjoy device test id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->l:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "TJC_OPTION_STORE_NAME"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3c5

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c5

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    new-instance p0, Ljava/util/ArrayList;

    sget-object v0, Lcom/tapjoy/c0;->b:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3c5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Warning -- undefined STORE_NAME: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c5
    :try_start_3c5
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;)Z

    move-result p0

    sput-boolean p0, Lcom/tapjoy/TapjoyConnectCore;->K:Z
    :try_end_3cd
    .catch Ljava/lang/Exception; {:try_start_3c5 .. :try_end_3cd} :catch_3ce

    goto :goto_3e4

    :catch_3ce
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Error trying to detect store intent on devicee: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3e4
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    const-string p0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3ff

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3ff

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/lang/String;

    :cond_3ff
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_415

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_415

    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    :cond_415
    const-string p0, "TJC_OPTION_USER_ID"

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_443

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_443

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Setting userID to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v7}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    :cond_443
    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->getRedirectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    if-eqz p0, :cond_4d0

    const-string p0, "Connect Flags:"

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "--------------------"

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_465
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_49d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    :cond_49d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "hostURL: ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "redirectDomain: ["

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4d0
    return-void

    :catch_4d1
    move-exception p0

    new-instance v0, Lcom/tapjoy/f0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/tapjoy/f0;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Landroid/content/pm/ActivityInfo;)V
    .registers 8

    const-string v0, "\'hardwareAccelerated\' property not specified in manifest for "

    const-string v1, "WARNING -- screenSize property is not specified in manifest configChanges for "

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/Vector;

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f7

    iget-object v3, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    :try_start_14
    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget v5, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v6, 0x80

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_2e

    const-string v5, "orientation"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2e
    iget v5, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_3a

    const-string v5, "keyboardHidden"

    invoke-virtual {v4, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_3a
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_8f

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6b

    new-instance p0, Lcom/tapjoy/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " property is not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6b
    new-instance p0, Lcom/tapjoy/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/util/Vector;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " properties are not specified in manifest configChanges for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    iget v4, p0, Landroid/content/pm/ActivityInfo;->configChanges:I

    const/16 v5, 0x400

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_ad

    const-string v4, "TapjoyConnect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ad
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v4, "com.tapjoy.TJAdUnitActivity"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d7

    iget p0, p0, Landroid/content/pm/ActivityInfo;->flags:I

    const/16 v1, 0x200

    and-int/2addr p0, v1

    if-ne p0, v1, :cond_bf

    goto :goto_d7

    :cond_bf
    new-instance p0, Lcom/tapjoy/i0;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d7
    :goto_d7
    invoke-virtual {v2, v3}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;
    :try_end_da
    .catch Ljava/lang/ClassNotFoundException; {:try_start_14 .. :try_end_da} :catch_db

    goto :goto_f7

    :catch_db
    new-instance p0, Lcom/tapjoy/i0;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[ClassNotFoundException] Could not find dependency class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->h:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f7
    :goto_f7
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 7

    instance-of v0, p1, Ljava/lang/String;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_6
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_10} :catch_1c

    goto :goto_1d

    :cond_11
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_1c

    :try_start_15
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_1b} :catch_1c

    goto :goto_1d

    :catch_1c
    :cond_1c
    move-wide v3, v1

    :goto_1d
    cmp-long p1, v3, v1

    if-gtz p1, :cond_29

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tapjoy/TapjoyAppSettings;->c()V

    goto :goto_5f

    :cond_29
    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_4f
    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_53} :catch_53

    :catch_53
    const-wide/16 v1, 0x3e8

    mul-long v3, v3, v1

    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide v1

    add-long/2addr v1, v3

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/tapjoy/TapjoyAppSettings;->d(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_5f
    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ge p0, v1, :cond_25

    const-string p0, "market://details"

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->S:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_25

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    :goto_26
    return v1
.end method

.method public static a(Ljava/lang/String;Z)Z
    .registers 18

    const-string v0, "currency_ids"

    const-string v1, "/"

    const-string v2, "sdk_beacons"

    const-string v3, "enabled"

    const-string v4, "TapjoyConnect"

    const/4 v5, 0x0

    :try_start_b
    invoke-static/range {p0 .. p0}, Lcom/tapjoy/internal/b4;->a(Ljava/lang/String;)Lcom/tapjoy/internal/k0;

    move-result-object v7
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_f} :catch_175
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_f} :catch_16a
    .catchall {:try_start_b .. :try_end_f} :catchall_166

    :try_start_f
    invoke-virtual {v7}, Lcom/tapjoy/internal/b4;->m()Ljava/util/LinkedHashMap;

    move-result-object v8

    const-string v9, "override_service_url"

    invoke-virtual {v8, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1b} :catch_163
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_1b} :catch_160
    .catchall {:try_start_f .. :try_end_1b} :catchall_15d

    const-string v10, ""

    if-nez v9, :cond_20

    move-object v9, v10

    :cond_20
    :try_start_20
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_40

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getInstance()Lcom/tapjoy/TapjoyConnectCore;

    move-result-object v11

    const-string v12, "TJC_OPTION_SERVICE_URL"

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3a

    invoke-virtual {v9, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3b

    :cond_3a
    move-object v1, v9

    :goto_3b
    sget-object v11, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v11, v12, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_40
    invoke-interface {v8, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_71

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/Boolean;

    if-eqz v2, :cond_71

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_71

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tapjoy/internal/i8;->a(Ljava/util/Map;Ljava/util/Map;)V

    :cond_71
    const-string v1, "app_group_id"

    invoke-virtual {v8, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7c

    move-object v1, v10

    :cond_7c
    const-string v2, "store"

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_87

    move-object v2, v10

    :cond_87
    const-string v3, "analytics_api_key"

    invoke-virtual {v8, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_92

    move-object v3, v10

    :cond_92
    const-string v11, "user_token_config"

    invoke-virtual {v8, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    const-string v12, "managed_device_id"

    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v12, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v10, v12

    :goto_a4
    const-string v12, "cache_max_age"

    invoke-virtual {v8, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    new-instance v13, Lcom/tapjoy/internal/m;

    invoke-direct {v13, v3}, Lcom/tapjoy/internal/m;-><init>(Ljava/lang/String;)V

    iget v14, v13, Lcom/tapjoy/internal/m;->b:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_155

    iget-object v14, v13, Lcom/tapjoy/internal/m;->c:Ljava/lang/String;

    invoke-static {v14}, Lcom/tapjoy/internal/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iget-object v13, v13, Lcom/tapjoy/internal/m;->d:Ljava/lang/String;

    sget-object v15, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-virtual {v15, v6, v14, v13}, Lcom/tapjoy/internal/v1;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    sput-object v10, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-interface {v8, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_cf} :catch_163
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_cf} :catch_160
    .catchall {:try_start_20 .. :try_end_cf} :catchall_15d

    if-eqz v1, :cond_11b

    :try_start_d1
    invoke-virtual {v8, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    if-eqz v1, :cond_11b

    if-eqz v0, :cond_11b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11b

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-virtual {v0, v2, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "currency_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "currency_self_managed"

    const-string v6, "self_managed"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v2, "server_currency_ids"

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_115} :catch_116
    .catchall {:try_start_d1 .. :try_end_115} :catchall_15d

    goto :goto_11b

    :catch_116
    :try_start_116
    const-string v0, "Error saving currency id list."

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11b
    :goto_11b
    instance-of v0, v11, Ljava/util/Map;

    if-eqz v0, :cond_123

    check-cast v11, Ljava/util/Map;

    sput-object v11, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/util/Map;

    :cond_123
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_134

    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->f:Z

    if-eqz v0, :cond_134

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V

    goto :goto_135

    :cond_134
    const/4 v1, 0x0

    :goto_135
    invoke-virtual {v7}, Lcom/tapjoy/internal/k0;->close()V
    :try_end_138
    .catch Ljava/io/IOException; {:try_start_116 .. :try_end_138} :catch_163
    .catch Ljava/lang/RuntimeException; {:try_start_116 .. :try_end_138} :catch_160
    .catchall {:try_start_116 .. :try_end_138} :catchall_15d

    if-nez p1, :cond_151

    move-object/from16 v0, p0

    :try_start_13c
    invoke-static {v0, v12}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    const-string v2, "configurations"

    invoke-virtual {v8, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/tapjoy/internal/ca;->c(Ljava/lang/Object;)V
    :try_end_14a
    .catch Ljava/io/IOException; {:try_start_13c .. :try_end_14a} :catch_14f
    .catch Ljava/lang/RuntimeException; {:try_start_13c .. :try_end_14a} :catch_14d
    .catchall {:try_start_13c .. :try_end_14a} :catchall_14b

    goto :goto_151

    :catchall_14b
    move-exception v0

    goto :goto_168

    :catch_14d
    move-exception v0

    goto :goto_16c

    :catch_14f
    move-exception v0

    goto :goto_177

    :cond_151
    :goto_151
    sget-object v0, Lcom/tapjoy/internal/l8;->a:Ljava/util/logging/Logger;

    const/4 v1, 0x1

    return v1

    :cond_155
    :try_start_155
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Invalid analytics_api_key"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15d
    .catch Ljava/io/IOException; {:try_start_155 .. :try_end_15d} :catch_163
    .catch Ljava/lang/RuntimeException; {:try_start_155 .. :try_end_15d} :catch_160
    .catchall {:try_start_155 .. :try_end_15d} :catchall_15d

    :catchall_15d
    move-exception v0

    move-object v6, v7

    goto :goto_184

    :catch_160
    move-exception v0

    move-object v6, v7

    goto :goto_16d

    :catch_163
    move-exception v0

    move-object v6, v7

    goto :goto_178

    :catchall_166
    move-exception v0

    const/4 v1, 0x0

    :goto_168
    move-object v6, v1

    goto :goto_184

    :catch_16a
    move-exception v0

    const/4 v1, 0x0

    :goto_16c
    move-object v6, v1

    :goto_16d
    :try_start_16d
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17f

    :catch_175
    move-exception v0

    const/4 v1, 0x0

    :goto_177
    move-object v6, v1

    :goto_178
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/tapjoy/TapjoyLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_17f
    .catchall {:try_start_16d .. :try_end_17f} :catchall_183

    :goto_17f
    invoke-static {v6}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    return v5

    :catchall_183
    move-exception v0

    :goto_184
    invoke-static {v6}, Lcom/tapjoy/internal/l8;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static b()V
    .registers 8

    const-string v0, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    sget-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->F0:Z

    if-nez v1, :cond_ba

    :try_start_6
    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1e

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    xor-int/2addr v0, v4

    invoke-virtual {v1, v0}, Lcom/tapjoy/g0;->j(Z)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->i()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->h()Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->c()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->V:I

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->d()I

    move-result v0

    sput v0, Lcom/tapjoy/TapjoyConnectCore;->U:I

    :cond_43
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->e()Z

    move-result v0

    if-eqz v0, :cond_9c

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->f()Z

    move-result v0

    sput-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->X:Z

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v0}, Lcom/tapjoy/g0;->b()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    sget-object v0, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    sget-boolean v2, Lcom/tapjoy/TapjoyConnectCore;->X:Z

    xor-int/2addr v2, v4

    iget-object v0, v0, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    iget-object v5, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v5, v5, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    invoke-virtual {v5}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v1, v6, Lcom/tapjoy/internal/s5;->r:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v6, Lcom/tapjoy/internal/s5;->s:Ljava/lang/Boolean;

    iget-object v6, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v6, v6, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    invoke-virtual {v6, v1}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v6, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v6, v6, Lcom/tapjoy/internal/h2;->v:Lcom/tapjoy/internal/c;

    invoke-virtual {v6, v2}, Lcom/tapjoy/internal/c;->b(Z)V

    sget-object v2, Lcom/tapjoy/internal/e7;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9c

    iget-object v0, v0, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v0, v0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-static {v0, v3}, Lcom/tapjoy/internal/a7;->a(Landroid/content/SharedPreferences;Z)V

    :cond_9c
    sput-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->F0:Z
    :try_end_9e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9e} :catch_9f

    goto :goto_ba

    :catch_9f
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error fetching advertising id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TapjoyConnect"

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_ba
    :goto_ba
    return-void
.end method

.method public static c()Ljava/util/HashMap;
    .registers 13

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    const-string v4, "plugin"

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    const-string v4, "sdk_type"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    const-string v4, "library_version"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v3, "library_revision"

    const-string v4, "decf34c"

    invoke-static {v2, v3, v4, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->t:Ljava/lang/String;

    const-string v4, "bridge_version"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    const-string v4, "app_version"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->m:Ljava/lang/String;

    const-string v4, "device_name"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->z:Ljava/lang/String;

    const-string v4, "platform"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->p:Ljava/lang/String;

    const-string v4, "os_version"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->n:Ljava/lang/String;

    const-string v4, "device_manufacturer"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o:Ljava/lang/String;

    const-string v4, "device_type"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v6, Lcom/tapjoy/TapjoyConnectCore;->w:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "screen_layout_size"

    invoke-static {v2, v6, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    const-string v6, "store_name"

    invoke-static {v2, v6, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->K:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "store_view"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    const-string v7, "carrier_name"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->B:Ljava/lang/String;

    const-string v7, "carrier_country_code"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->D:Ljava/lang/String;

    const-string v7, "mobile_network_code"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->C:Ljava/lang/String;

    const-string v7, "mobile_country_code"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v3

    const-string v7, "country_code"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v7, "language_code"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionType()Ljava/lang/String;

    move-result-object v3

    const-string v7, "connection_type"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getConnectionSubType()Ljava/lang/String;

    move-result-object v3

    const-string v7, "connection_subtype"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tapjoy/TapjoyConnectCore;->u:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "screen_density"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getVolume(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "volume"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "theme"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/TapjoyUtil;->getScreenBrightness(Landroid/content/Context;)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "brightness"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->getAvailableDiskSpace()Ljava/lang/Long;

    move-result-object v3

    const-string v4, "avail_disk"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-static {}, Lcom/tapjoy/TapjoyUtil;->getTotalDiskSpace()Ljava/lang/Long;

    move-result-object v3

    const-string v4, "total_disk"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/tapjoy/TJDeviceInfo;->getBatteryLevel(Landroid/content/Context;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const-string v4, "battery"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "uptime"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz v3, :cond_158

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_158

    const/4 v3, 0x1

    goto :goto_159

    :cond_158
    const/4 v3, 0x0

    :goto_159
    if-eqz v3, :cond_175

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v3}, Lcom/tapjoy/g0;->g()Z

    move-result v3

    if-eqz v3, :cond_16a

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const-string v7, "advertising_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_16a
    sget-boolean v3, Lcom/tapjoy/TapjoyConnectCore;->X:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "ad_tracking_enabled"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_175
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v3}, Lcom/tapjoy/g0;->g()Z

    move-result v3

    xor-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v7, "optout_adid"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a0:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_194

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a0:Ljava/lang/String;

    const-string v7, "app_set_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_194
    const-string v3, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "true"

    if-eqz v7, :cond_1aa

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1aa

    const/4 v3, 0x1

    goto :goto_1ab

    :cond_1aa
    const/4 v3, 0x0

    :goto_1ab
    if-eqz v3, :cond_1bc

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    if-eqz v3, :cond_1b9

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1b9

    const/4 v3, 0x1

    goto :goto_1ba

    :cond_1b9
    const/4 v3, 0x0

    :goto_1ba
    if-eqz v3, :cond_1e3

    :cond_1bc
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v3}, Lcom/tapjoy/g0;->i()Z

    move-result v3

    if-eqz v3, :cond_1cc

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v3}, Lcom/tapjoy/g0;->h()Z

    move-result v3

    if-nez v3, :cond_1e0

    :cond_1cc
    const-string v3, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1e0

    invoke-static {v3}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e0

    const/4 v3, 0x0

    goto :goto_1e1

    :cond_1e0
    const/4 v3, 0x1

    :goto_1e1
    if-nez v3, :cond_1ea

    :cond_1e3
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    const-string v7, "android_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1ea
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->k:Ljava/lang/String;

    const-string v7, "install_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->l:Ljava/lang/String;

    const-string v7, "test_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    const-string v7, "publisher_user_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->Y:Ljava/lang/String;

    const-string v7, "ad_id_check_disabled"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->Z:Ljava/lang/String;

    const-string v7, "legacy_id_fallback_allowed"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget v3, Lcom/tapjoy/TapjoyConnectCore;->U:I

    if-eqz v3, :cond_21a

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "packaged_gps_version"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_21a
    sget v3, Lcom/tapjoy/TapjoyConnectCore;->V:I

    if-eqz v3, :cond_227

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v7, "device_gps_version"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_227
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->j:Ljava/lang/String;

    if-eqz v3, :cond_247

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_247

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-wide v9, Lcom/tapjoy/TapjoyConnectCore;->Q:J

    sub-long/2addr v7, v9

    const-wide/32 v9, 0x1b7740

    cmp-long v3, v7, v9

    if-lez v3, :cond_240

    goto :goto_247

    :cond_240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sput-wide v7, Lcom/tapjoy/TapjoyConnectCore;->Q:J

    goto :goto_28a

    :cond_247
    :goto_247
    const/4 v3, 0x0

    const-string v7, "TapjoyConnect"

    const-string v8, "generating sessionID..."

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_24f
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sput-wide v8, Lcom/tapjoy/TapjoyConnectCore;->Q:J
    :try_end_271
    .catch Ljava/lang/Exception; {:try_start_24f .. :try_end_271} :catch_272

    goto :goto_288

    :catch_272
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "unable to generate session id: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_288
    sput-object v3, Lcom/tapjoy/TapjoyConnectCore;->j:Ljava/lang/String;

    :goto_28a
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->j:Ljava/lang/String;

    const-string v7, "session_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->L:Ljava/lang/String;

    const-string v7, "app_group_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->M:Ljava/lang/String;

    const-string v7, "store"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->N:Ljava/lang/String;

    const-string v7, "analytics_api_key"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    const-string v7, "managed_device_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v7, v2, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    sget-object v8, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    if-eq v7, v8, :cond_2d5

    if-eqz v7, :cond_2d5

    invoke-virtual {v7}, Lcom/tapjoy/TJStatus;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "gdpr"

    invoke-static {v3, v9, v7, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2d5
    iget-object v7, v2, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    if-eq v7, v8, :cond_2e4

    if-eqz v7, :cond_2e4

    invoke-virtual {v7}, Lcom/tapjoy/TJStatus;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "cgdpr"

    invoke-static {v3, v9, v7, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2e4
    iget-object v7, v2, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-eq v7, v8, :cond_2f3

    if-eqz v7, :cond_2f3

    invoke-virtual {v7}, Lcom/tapjoy/TJStatus;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "below_consent_age"

    invoke-static {v3, v8, v7, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2f3
    iget-object v7, v2, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_304

    iget-object v2, v2, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    if-eqz v2, :cond_304

    const-string v7, "us_privacy"

    invoke-static {v3, v7, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_304
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iget-object v2, v2, Lcom/tapjoy/TJUserParameters;->f:Lcom/tapjoy/TJSegment;

    if-eqz v2, :cond_324

    sget-object v7, Lcom/tapjoy/TJSegment;->d:Lcom/tapjoy/TJSegment;

    if-eq v2, v7, :cond_324

    invoke-virtual {v2}, Lcom/tapjoy/TJSegment;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "user_segment"

    invoke-static {v3, v7, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_324
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    if-eqz v2, :cond_352

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_352

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_352

    invoke-static {}, Lcom/tapjoy/TapjoyCache;->getInstance()Lcom/tapjoy/TapjoyCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tapjoy/TapjoyCache;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cached_ids"

    invoke-static {v1, v3, v2, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_352
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->g()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->d0:Ljava/lang/String;

    const-string v7, "analytics_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->e0:Ljava/lang/String;

    const-string v7, "pkg_id"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->f0:Ljava/lang/String;

    const-string v7, "pkg_sign"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->z0:Ljava/lang/Integer;

    const-string v7, "display_d"

    invoke-static {v2, v7, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->A0:Ljava/lang/Integer;

    const-string v7, "display_w"

    invoke-static {v2, v7, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->B0:Ljava/lang/Integer;

    const-string v7, "display_h"

    invoke-static {v2, v7, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->C0:Ljava/lang/String;

    const-string v7, "country_sim"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->D0:Ljava/lang/String;

    const-string v7, "timezone"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->g0:Ljava/lang/String;

    const-string v7, "pkg_ver"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->h0:Ljava/lang/Integer;

    const-string v7, "pkg_rev"

    invoke-static {v2, v7, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->i0:Ljava/lang/String;

    const-string v7, "installer"

    invoke-static {v2, v7, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->E:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c4

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->E0:Ljava/lang/String;

    invoke-static {v2, v6, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3c4
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->j0:Ljava/lang/Long;

    const-string v6, "installed"

    invoke-static {v2, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->k0:Ljava/lang/String;

    const-string v6, "referrer"

    invoke-static {v2, v6, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->l0:Ljava/lang/Integer;

    const-string v6, "user_level"

    invoke-static {v2, v6, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->m0:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3e7
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "user_tags["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v6, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    move v4, v8

    goto :goto_3e7

    :cond_40d
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->n0:Ljava/lang/Integer;

    const-string v4, "fq7"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->o0:Ljava/lang/Integer;

    const-string v4, "fq30"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->p0:Ljava/lang/Integer;

    const-string v4, "session_total_count"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->q0:Ljava/lang/Long;

    const-string v4, "session_total_length"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->r0:Ljava/lang/Long;

    const-string v4, "session_last_at"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->t0:Ljava/lang/Long;

    const-string v4, "session_last_length"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->s0:Ljava/lang/Long;

    if-eqz v3, :cond_44f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->s0:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long/2addr v3, v6

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const-string v4, "session_duration"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    :cond_44f
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->u0:Ljava/lang/String;

    const-string v4, "purchase_currency"

    invoke-static {v2, v4, v3, v5}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->v0:Ljava/lang/Integer;

    const-string v4, "purchase_total_count"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->w0:Ljava/lang/Double;

    const-string v4, "purchase_total_price"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->x0:Ljava/lang/Double;

    const-string v4, "purchase_last_price"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->y0:Ljava/lang/Long;

    const-string v4, "purchase_last_at"

    invoke-static {v2, v4, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Number;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static synthetic e()V
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->d:Lcom/tapjoy/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tapjoy/n;->onConnectSuccess()V

    :cond_7
    return-void
.end method

.method public static synthetic f()V
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->d:Lcom/tapjoy/n;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/tapjoy/n;->onConnectSuccess()V

    :cond_7
    return-void
.end method

.method public static g()V
    .registers 3

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    sget-object v1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {v1, v0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d3;->k()V

    iget-object v0, v1, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    invoke-virtual {v0}, Lcom/tapjoy/internal/d3;->b()Lcom/tapjoy/internal/y;

    move-result-object v0

    iget-object v1, v0, Lcom/tapjoy/internal/y;->d:Lcom/tapjoy/internal/f;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->e:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->d0:Ljava/lang/String;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->o:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->e0:Ljava/lang/String;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->p:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->f0:Ljava/lang/String;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->j:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->z0:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->k:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->A0:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->l:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->B0:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/tapjoy/internal/f;->r:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->C0:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/f;->n:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->D0:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/y;->e:Lcom/tapjoy/internal/r5;

    iget-object v2, v1, Lcom/tapjoy/internal/r5;->d:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->g0:Ljava/lang/String;

    iget-object v2, v1, Lcom/tapjoy/internal/r5;->e:Ljava/lang/Integer;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->h0:Ljava/lang/Integer;

    iget-object v2, v1, Lcom/tapjoy/internal/r5;->f:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->i0:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/r5;->g:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->E0:Ljava/lang/String;

    iget-object v0, v0, Lcom/tapjoy/internal/y;->f:Lcom/tapjoy/internal/p6;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->e:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->j0:Ljava/lang/Long;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->f:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->k0:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->w:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->l0:Ljava/lang/Integer;

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, v0, Lcom/tapjoy/internal/p6;->x:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->m0:Ljava/util/HashSet;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->g:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->n0:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->h:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->o0:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->j:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->p0:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->k:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->q0:Ljava/lang/Long;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->l:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->r0:Ljava/lang/Long;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->m:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->s0:Ljava/lang/Long;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->n:Ljava/lang/Long;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->t0:Ljava/lang/Long;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->o:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->u0:Ljava/lang/String;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->p:Ljava/lang/Integer;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->v0:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->q:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->w0:Ljava/lang/Double;

    iget-object v1, v0, Lcom/tapjoy/internal/p6;->s:Ljava/lang/Double;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->x0:Ljava/lang/Double;

    iget-object v0, v0, Lcom/tapjoy/internal/p6;->r:Ljava/lang/Long;

    sput-object v0, Lcom/tapjoy/TapjoyConnectCore;->y0:Ljava/lang/Long;

    return-void
.end method

.method public static getAndroidID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    return-object v0
.end method

.method public static getAwardCurrencyVerifier(JILjava/lang/String;)Ljava/lang/String;
    .registers 13

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    const-string v1, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    const-string v2, "TapjoyConnect"

    const-string v3, ":"

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_23

    const/4 v5, 0x1

    goto :goto_24

    :cond_23
    const/4 v5, 0x0

    :goto_24
    if-eqz v5, :cond_29

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    goto :goto_7c

    :cond_29
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2d} :catch_a2

    const-string v8, "true"

    if-eqz v5, :cond_3d

    :try_start_31
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const/4 v1, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v1, 0x0

    :goto_3e
    if-nez v1, :cond_65

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v1}, Lcom/tapjoy/g0;->i()Z

    move-result v1

    if-eqz v1, :cond_50

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v1}, Lcom/tapjoy/g0;->h()Z

    move-result v1

    if-nez v1, :cond_62

    :cond_50
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_62

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_62

    const/4 v0, 0x0

    goto :goto_63

    :cond_62
    const/4 v0, 0x1

    :goto_63
    if-nez v0, :cond_76

    :cond_65
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_70

    goto :goto_71

    :cond_70
    const/4 v6, 0x0

    :goto_71
    if-eqz v6, :cond_76

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    goto :goto_7c

    :cond_76
    const-string v0, "Error -- no valid device identifier"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_7c
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_a1} :catch_a2

    goto :goto_c1

    :catch_a2
    move-exception p0

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Error in computing awardCurrencyVerifier -- "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const-string p0, ""

    :goto_c1
    return-object p0
.end method

.method public static getCarrierName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    if-eqz v0, :cond_15

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_17

    :cond_15
    const-string p0, ""

    :goto_17
    return-object p0
.end method

.method public static getConnectURL()Ljava/lang/String;
    .registers 1

    const-string v0, "https://connect.tapjoy.com/"

    return-object v0
.end method

.method public static getConnectionSubType()Ljava/lang/String;
    .registers 5

    const-string v0, "TapjoyConnect"

    const-string v1, "connection_sub_type: "

    const-string v2, ""

    :try_start_6
    sget-object v3, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v3, :cond_40

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_29} :catch_2a

    goto :goto_40

    :catch_2a
    move-exception v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionSubType error: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    :goto_40
    return-object v2
.end method

.method public static getConnectionType()Ljava/lang/String;
    .registers 7

    const-string v0, "TapjoyConnect"

    const-string v1, "connection_type: "

    const-string v2, "connectivity: "

    const-string v3, ""

    :try_start_8
    sget-object v4, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    const-string v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_62

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    if-eqz v5, :cond_62

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2b

    const/4 v6, 0x6

    if-eq v5, v6, :cond_2b

    const-string v3, "mobile"

    goto :goto_2d

    :cond_2b
    const-string v3, "wifi"

    :goto_2d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_4b} :catch_4c

    goto :goto_62

    :catch_4c
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "getConnectionType error: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-object v3
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static getCustomParameter()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceScreenDensityScale()F
    .registers 1

    sget v0, Lcom/tapjoy/TapjoyConnectCore;->v:F

    return v0
.end method

.method public static getGenericURLParams()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    const-string v2, "app_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static getHostURL()Ljava/lang/String;
    .registers 1

    const-string v0, "TJC_OPTION_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/tapjoy/TapjoyConnectCore;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TapjoyConnectCore;

    return-object v0
.end method

.method public static getPlacementURL()Ljava/lang/String;
    .registers 1

    const-string v0, "TJC_OPTION_PLACEMENT_SERVICE_URL"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRedirectDomain()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->J:Ljava/lang/String;

    return-object v0
.end method

.method public static getSecretKey()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    return-object v0
.end method

.method public static getSupportURL(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_4

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "support_requests/new?currency_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&app_id="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&udid="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&language_code="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeStampAndVerifierParams()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "TJC_OPTION_DISABLE_ADVERTISING_ID_CHECK"

    const-string v1, "TJC_OPTION_ALLOW_LEGACY_ID_FALLBACK"

    const-string v2, "TapjoyConnect"

    const-string v3, ":"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const/4 v6, 0x1

    :try_start_10
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const/4 v9, 0x0

    if-eqz v8, :cond_2a

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2a

    const/4 v8, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v8, 0x0

    :goto_2b
    if-eqz v8, :cond_30

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    goto :goto_82

    :cond_30
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_34} :catch_9c

    const-string v10, "true"

    if-eqz v8, :cond_44

    :try_start_38
    invoke-static {v1}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    const/4 v1, 0x1

    goto :goto_45

    :cond_44
    const/4 v1, 0x0

    :goto_45
    if-nez v1, :cond_6c

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v1}, Lcom/tapjoy/g0;->i()Z

    move-result v1

    if-eqz v1, :cond_57

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    invoke-virtual {v1}, Lcom/tapjoy/g0;->h()Z

    move-result v1

    if-nez v1, :cond_69

    :cond_57
    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_69

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_69

    const/4 v0, 0x0

    goto :goto_6a

    :cond_69
    const/4 v0, 0x1

    :goto_6a
    if-nez v0, :cond_7c

    :cond_6c
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_77

    const/4 v9, 0x1

    :cond_77
    if-eqz v9, :cond_7c

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->i:Ljava/lang/String;

    goto :goto_82

    :cond_7c
    const-string v0, "Error -- no valid device identifier"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_82
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_9b} :catch_9c

    goto :goto_bb

    :catch_9c
    move-exception v0

    new-instance v1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object v3, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Error in computing verifier value -- "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    const-string v0, ""

    :goto_bb
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "timestamp"

    invoke-static {v1, v3, v2, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "verifier"

    invoke-static {v1, v2, v0, v6}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v1
.end method

.method public static getURLParams()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method public static getUserID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserToken()Ljava/lang/String;
    .registers 6

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/util/Map;

    if-eqz v0, :cond_51

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_51

    :cond_b
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->P:Ljava/util/Map;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1a

    :cond_33
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    const-string v2, "userid"

    invoke-static {v1, v2, v0, v4}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_42
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyUtil;->convertURLParams(Ljava/util/Map;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    :goto_51
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_72

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_72
    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->O:Ljava/lang/String;

    return-object v0
.end method

.method private synthetic i(Ljava/lang/String;)V
    .registers 3

    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->a0:Ljava/lang/String;

    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->I0:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/tapjoy/a;

    invoke-direct {v0, p0}, Lcom/tapjoy/a;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static isConnected()Z
    .registers 1

    sget-boolean v0, Lcom/tapjoy/TapjoyConnectCore;->R:Z

    return v0
.end method

.method public static isFullScreenViewOpen()Z
    .registers 4

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_21

    const/4 v3, 0x2

    if-eq v1, v3, :cond_21

    goto :goto_a

    :cond_21
    return v2

    :cond_22
    const/4 v0, 0x0

    return v0
.end method

.method public static isUnitTestMode()Z
    .registers 2

    const-string v0, "unit_test_mode"

    invoke-static {v0}, Lcom/tapjoy/TapjoyConnectCore;->getConnectFlagValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static isViewOpen()Z
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isViewOpen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TapjoyConnect"

    invoke-static {v2, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private synthetic k()V
    .registers 4

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->b()V

    new-instance v0, Lcom/tapjoy/m;

    invoke-direct {v0}, Lcom/tapjoy/m;-><init>()V

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->a:Landroid/content/Context;

    new-instance v2, Lcom/tapjoy/f;

    invoke-direct {v2, p0}, Lcom/tapjoy/f;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-virtual {v0, v1, v2}, Lcom/tapjoy/m;->a(Landroid/content/Context;Lcom/tapjoy/TJTaskHandler;)V

    return-void
.end method

.method public static synthetic l(Lcom/tapjoy/TapjoyConnectCore;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tapjoy/TapjoyConnectCore;->i(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic m(Lcom/tapjoy/TapjoyConnectCore;)V
    .registers 1

    invoke-direct {p0}, Lcom/tapjoy/TapjoyConnectCore;->k()V

    return-void
.end method

.method public static optOutAdvertisingID(Landroid/content/Context;Z)V
    .registers 7

    if-eqz p0, :cond_8d

    const-string v0, "tjcPrefrences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "optout_advertising_id"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result p0

    if-eqz p0, :cond_8d

    const/4 p0, 0x1

    if-nez p1, :cond_46

    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :cond_2a
    :goto_2a
    if-nez p0, :cond_36

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    const-string p1, "00000000-0000-0000-0000-000000000000"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8d

    :cond_36
    sput-boolean v1, Lcom/tapjoy/TapjoyConnectCore;->F0:Z

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/tapjoy/r0;

    invoke-direct {p1}, Lcom/tapjoy/r0;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_8d

    :cond_46
    const-string p1, ""

    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->T:Lcom/tapjoy/g0;

    if-eqz p1, :cond_8d

    invoke-virtual {p1}, Lcom/tapjoy/g0;->k()V

    sget-object p1, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    iget-object p1, p1, Lcom/tapjoy/internal/v1;->h:Lcom/tapjoy/internal/d3;

    iget-object v2, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v2, v2, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    invoke-virtual {v2}, Lcom/tapjoy/internal/o3;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/tapjoy/internal/d3;->d:Lcom/tapjoy/internal/s5;

    iput-object v0, v3, Lcom/tapjoy/internal/s5;->r:Ljava/lang/String;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v4, v3, Lcom/tapjoy/internal/s5;->s:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v3, v3, Lcom/tapjoy/internal/h2;->u:Lcom/tapjoy/internal/o3;

    invoke-virtual {v3, v0}, Lcom/tapjoy/internal/o3;->b(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object v3, v3, Lcom/tapjoy/internal/h2;->v:Lcom/tapjoy/internal/c;

    invoke-virtual {v3, p0}, Lcom/tapjoy/internal/c;->b(Z)V

    sget-object p0, Lcom/tapjoy/internal/e7;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8d

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8d

    iget-object p0, p1, Lcom/tapjoy/internal/d3;->f:Lcom/tapjoy/internal/h2;

    iget-object p0, p0, Lcom/tapjoy/internal/h2;->b:Landroid/content/SharedPreferences;

    invoke-static {p0, v1}, Lcom/tapjoy/internal/a7;->a(Landroid/content/SharedPreferences;Z)V

    :cond_8d
    :goto_8d
    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V

    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/tapjoy/TapjoyConnectCore;->requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)V

    return-void
.end method

.method public static requestTapjoyConnect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/n;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "*>;",
            "Lcom/tapjoy/n;",
            ")V"
        }
    .end annotation

    const-string v0, "TapjoyConnect"

    :try_start_2
    new-instance v1, Lcom/tapjoy/internal/m;

    invoke-direct {v1, p1}, Lcom/tapjoy/internal/m;-><init>(Ljava/lang/String;)V

    iget v2, v1, Lcom/tapjoy/internal/m;->b:I
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_9} :catch_d0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c8

    iget-object v2, v1, Lcom/tapjoy/internal/m;->c:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    iget-object v2, v1, Lcom/tapjoy/internal/m;->d:Ljava/lang/String;

    sput-object v2, Lcom/tapjoy/TapjoyConnectCore;->F:Ljava/lang/String;

    iget-object v1, v1, Lcom/tapjoy/internal/m;->e:Ljava/lang/String;

    sput-object v1, Lcom/tapjoy/TapjoyConnectCore;->G:Ljava/lang/String;

    if-eqz p2, :cond_69

    sget-object v1, Lcom/tapjoy/TapjoyConnectCore;->b0:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->putAll(Ljava/util/Map;)V

    sget-object v1, Lcom/tapjoy/internal/ca;->a:Lcom/tapjoy/internal/ca;

    iget-object v1, v1, Lcom/tapjoy/internal/ca;->b:Lcom/tapjoy/internal/t6;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_33
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    sget-object v5, Lcom/tapjoy/internal/t6;->b:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-nez v5, :cond_53

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :cond_53
    iget-object v6, v1, Lcom/tapjoy/internal/t6;->d:Lcom/tapjoy/internal/q3;

    iget-object v6, v6, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_33

    :cond_62
    iget-object p2, v1, Lcom/tapjoy/internal/t6;->e:Lcom/tapjoy/internal/q3;

    iput-object v2, p2, Lcom/tapjoy/internal/q3;->a:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/tapjoy/internal/c4;->setChanged()V

    :cond_69
    sget-object p2, Lcom/tapjoy/internal/v1;->a:Lcom/tapjoy/internal/v1;

    invoke-virtual {p2, p0}, Lcom/tapjoy/internal/v1;->g(Landroid/content/Context;)V

    iput-object p1, p2, Lcom/tapjoy/internal/v1;->k:Ljava/lang/String;

    sput-object p3, Lcom/tapjoy/TapjoyConnectCore;->d:Lcom/tapjoy/n;

    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TapjoyConnectCore;

    if-nez p1, :cond_7d

    new-instance p1, Lcom/tapjoy/TapjoyConnectCore;

    invoke-direct {p1}, Lcom/tapjoy/TapjoyConnectCore;-><init>()V

    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TapjoyConnectCore;

    :cond_7d
    sget-object p1, Lcom/tapjoy/TapjoyConnectCore;->b:Lcom/tapjoy/TapjoyConnectCore;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_82
    invoke-static {p0}, Lcom/tapjoy/TapjoyConnectCore;->a(Landroid/content/Context;)V

    invoke-virtual {p1}, Lcom/tapjoy/TapjoyConnectCore;->a()V

    iput-boolean v3, p1, Lcom/tapjoy/TapjoyConnectCore;->H0:Z
    :try_end_8a
    .catch Lcom/tapjoy/i0; {:try_start_82 .. :try_end_8a} :catch_aa
    .catch Lcom/tapjoy/f0; {:try_start_82 .. :try_end_8a} :catch_8b

    goto :goto_c7

    :catch_8b
    move-exception p0

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->b:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x2

    invoke-static {p1, p0}, Lcom/tapjoy/TapjoyConnectCore;->a(ILjava/lang/String;)V

    sget-object p0, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/n2;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_c7

    :catch_aa
    move-exception p0

    new-instance p1, Lcom/tapjoy/TapjoyErrorMessage;

    sget-object p2, Lcom/tapjoy/TapjoyErrorMessage$ErrorType;->d:Lcom/tapjoy/TapjoyErrorMessage$ErrorType;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lcom/tapjoy/TapjoyErrorMessage;-><init>(Lcom/tapjoy/TapjoyErrorMessage$ErrorType;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Lcom/tapjoy/TapjoyErrorMessage;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/tapjoy/TapjoyConnectCore;->a(ILjava/lang/String;)V

    sget-object p0, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/n2;->notifyObservers(Ljava/lang/Object;)V

    :goto_c7
    return-void

    :cond_c8
    :try_start_c8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The given API key was not for Android."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_d0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c8 .. :try_end_d0} :catch_d0

    :catch_d0
    move-exception p0

    new-instance p1, Lcom/tapjoy/i0;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/tapjoy/i0;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static setCustomParameter(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->y:Ljava/lang/String;

    return-void
.end method

.method public static setPlugin(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->H:Ljava/lang/String;

    return-void
.end method

.method public static setSDKType(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->I:Ljava/lang/String;

    return-void
.end method

.method public static setUserID(Ljava/lang/String;Lcom/tapjoy/TJSetUserIDListener;)V
    .registers 2

    sput-object p0, Lcom/tapjoy/TapjoyConnectCore;->x:Ljava/lang/String;

    sput-object p1, Lcom/tapjoy/TapjoyConnectCore;->e:Lcom/tapjoy/TJSetUserIDListener;

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "URL parameters: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TapjoyConnect"

    invoke-static {p1, p0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/Thread;

    new-instance p1, Lcom/tapjoy/q0;

    invoke-direct {p1}, Lcom/tapjoy/q0;-><init>()V

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static setViewShowing(Z)V
    .registers 3

    if-eqz p0, :cond_f

    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_f
    sget-object p0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :goto_14
    return-void
.end method

.method public static viewDidClose(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "viewDidClose: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/tapjoy/internal/a3;->e:Lcom/tapjoy/internal/n2;

    invoke-virtual {p0}, Lcom/tapjoy/internal/n2;->notifyObservers()V

    return-void
.end method

.method public static viewWillOpen(Ljava/lang/String;I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "viewWillOpen: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/tapjoy/TapjoyConnectCore;->c0:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/tapjoy/TapjoyConnectCore;->I0:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tapjoy/g;

    invoke-direct {v1, p0}, Lcom/tapjoy/g;-><init>(Lcom/tapjoy/TapjoyConnectCore;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "actionComplete: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyConnect"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->c()Ljava/util/HashMap;

    move-result-object v0

    const-string v2, "app_id"

    const/4 v3, 0x1

    invoke-static {v0, v2, p1, v3}, Lcom/tapjoy/TapjoyUtil;->safePut(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getTimeStampAndVerifierParams()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "PPA URL parameters: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tapjoy/TapjoyConnectCore;->I0:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/tapjoy/TapjoyConnectCore$a;

    invoke-direct {v1, p0, v0}, Lcom/tapjoy/TapjoyConnectCore$a;-><init>(Lcom/tapjoy/TapjoyConnectCore;Ljava/util/Map;)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->G0:Z

    return-void
.end method

.method public h()V
    .registers 7

    iget-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->G0:Z

    if-eqz v0, :cond_46

    const-string v0, "TapjoyConnect"

    const-string v1, "generating sessionID..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tapjoy/TapjoyUtil;->SHA256(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/tapjoy/TapjoyConnectCore;->Q:J
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2c} :catch_2d

    goto :goto_43

    :catch_2d
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unable to generate session id: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/TapjoyConnectCore;->G0:Z

    :cond_46
    return-void
.end method

.method public j()V
    .registers 9

    const-string v0, "TapjoyConnect"

    const-string v1, "starting connect call..."

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https://ws.tapjoyads.com/"

    if-eq v1, v2, :cond_14

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getHostURL()Ljava/lang/String;

    move-result-object v1

    goto :goto_16

    :cond_14
    const-string v1, "https://connect.tapjoy.com/"

    :goto_16
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isConnected()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_6d

    invoke-static {}, Lcom/tapjoy/TapjoyAppSettings;->getInstance()Lcom/tapjoy/TapjoyAppSettings;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->q:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->r:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->s:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->W:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->k:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_44
    invoke-static {v5}, Lcom/tapjoy/TapjoyUtil;->SHA1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_48} :catch_49

    goto :goto_4a

    :catch_49
    nop

    :goto_4a
    invoke-static {}, Lcom/tapjoy/internal/na;->a()J

    move-result-wide v6

    invoke-virtual {v2, v5, v6, v7}, Lcom/tapjoy/TapjoyAppSettings;->b(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6d

    invoke-static {v2, v4}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_6d

    const-string v2, "Connect using stored connect result"

    invoke-static {v0, v2}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->R:Z

    sget-object v2, Lcom/tapjoy/e;->a:Lcom/tapjoy/e;

    invoke-static {v2}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/tapjoy/internal/a3;->a:Lcom/tapjoy/internal/n2;

    invoke-virtual {v2}, Lcom/tapjoy/internal/n2;->notifyObservers()V

    const/4 v2, 0x1

    goto :goto_6e

    :cond_6d
    const/4 v2, 0x0

    :goto_6e
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getURLParams()Ljava/util/Map;

    move-result-object v5

    invoke-static {}, Lcom/tapjoy/TJUserParameters;->getInstance()Lcom/tapjoy/TJUserParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tapjoy/TJUserParameters;->a()Ljava/util/HashMap;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    sget-object v6, Lcom/tapjoy/TapjoyConnectCore;->c:Lcom/tapjoy/j0;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "api/connect/v3.json?"

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7, v7, v5}, Lcom/tapjoy/j0;->d(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)Lcom/tapjoy/h0;

    move-result-object v1

    if-eqz v1, :cond_10d

    iget v5, v1, Lcom/tapjoy/h0;->a:I

    const/16 v6, 0xc8

    if-ne v5, v6, :cond_10d

    iget-object v5, v1, Lcom/tapjoy/h0;->d:Ljava/lang/String;

    invoke-static {v5, v3}, Lcom/tapjoy/TapjoyConnectCore;->a(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_fc

    const-string v1, "Successfully connected to Tapjoy"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v4, Lcom/tapjoy/TapjoyConnectCore;->R:Z

    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->getGenericURLParams()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tapjoy/TapjoyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b8

    :cond_e8
    if-nez v2, :cond_f4

    sget-object v0, Lcom/tapjoy/c;->a:Lcom/tapjoy/c;

    invoke-static {v0}, Lcom/tapjoy/TapjoyUtil;->runOnMainThread(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/tapjoy/internal/a3;->a:Lcom/tapjoy/internal/n2;

    invoke-virtual {v0}, Lcom/tapjoy/internal/n2;->notifyObservers()V

    :cond_f4
    sget-object v0, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n2;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_126

    :cond_fc
    if-nez v2, :cond_105

    iget v0, v1, Lcom/tapjoy/h0;->a:I

    const-string v1, "Invalid response formatting"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(ILjava/lang/String;)V

    :cond_105
    sget-object v0, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n2;->notifyObservers(Ljava/lang/Object;)V

    goto :goto_126

    :cond_10d
    if-nez v2, :cond_11f

    if-eqz v1, :cond_119

    iget v0, v1, Lcom/tapjoy/h0;->a:I

    const-string v1, "Invalid response"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(ILjava/lang/String;)V

    goto :goto_11f

    :cond_119
    const/4 v0, 0x3

    const-string v1, "No response"

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyConnectCore;->a(ILjava/lang/String;)V

    :cond_11f
    :goto_11f
    sget-object v0, Lcom/tapjoy/internal/a3;->b:Lcom/tapjoy/internal/n2;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/n2;->notifyObservers(Ljava/lang/Object;)V

    :goto_126
    return-void
.end method
