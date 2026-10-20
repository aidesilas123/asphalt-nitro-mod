###### Class com.mbridge.msdk.foundation.controller.d (com.mbridge.msdk.foundation.controller.d)
.class public final Lcom/mbridge/msdk/foundation/controller/d;
.super Ljava/lang/Object;
.source "TCStringManager.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mbridge/msdk/foundation/controller/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Lcom/mbridge/msdk/foundation/controller/d$a;

.field private final m:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->d:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->e:I

    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->f:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->m:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_21

    invoke-interface {p1, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    :cond_21
    if-eqz p1, :cond_4e

    const-string v2, "IABTCF_TCString"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mbridge/msdk/foundation/controller/d;->a:Ljava/lang/String;

    const-string v2, "IABTCF_gdprApplies"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->e:I

    const-string v1, "IABTCF_PurposeConsents"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/lang/String;)V

    const-string v1, "IABTCF_VendorConsents"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mbridge/msdk/foundation/controller/d;->b(Ljava/lang/String;)V

    const-string v1, "IABTCF_AddtlConsent"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->c(Ljava/lang/String;)V

    :cond_4e
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->g:Z

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->h:Z

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->b:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;I)Z
    .registers 6

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    if-gt p2, v0, :cond_1a

    if-lt p2, v2, :cond_1a

    const/16 v0, 0x31

    sub-int/2addr p2, v2

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne v0, p1, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1
.end method

.method private b(Ljava/lang/String;)V
    .registers 3

    const/16 v0, 0x363

    invoke-direct {p0, p1, v0}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->i:Z

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->c:Ljava/lang/String;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->d:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->j:Z

    return-void

    :cond_c
    sget v0, Lcom/mbridge/msdk/MBridgeConstans;->GOOGLE_ATP_ID:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_15

    iput-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/d;->k:Z

    return-void

    :cond_15
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->k:Z

    :try_start_17
    const-string v0, "~"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    if-le v2, v1, :cond_42

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iput-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/d;->j:Z

    goto :goto_42

    :cond_2b
    sget v0, Lcom/mbridge/msdk/MBridgeConstans;->GOOGLE_ATP_ID:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->j:Z
    :try_end_37
    .catchall {:try_start_17 .. :try_end_37} :catchall_38

    goto :goto_42

    :catchall_38
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TCStringManager"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    :goto_42
    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "[01]+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_d
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Lcom/mbridge/msdk/foundation/controller/d$a;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->l:Lcom/mbridge/msdk/foundation/controller/d$a;

    :cond_4
    return-void
.end method

.method public final b()Z
    .registers 5

    iget v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->e:I

    const/4 v1, 0x1

    if-nez v0, :cond_8

    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->f:Z

    return v1

    :cond_8
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/controller/d;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_50

    iget-object v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/controller/d;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto :goto_50

    :cond_1a
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->VERIFY_ATP_CONSENT:Z

    if-eqz v0, :cond_42

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->k:Z

    if-eqz v0, :cond_28

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->j:Z

    if-eqz v0, :cond_28

    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    iget-boolean v3, p0, Lcom/mbridge/msdk/foundation/controller/d;->i:Z

    if-nez v3, :cond_32

    if-eqz v0, :cond_30

    goto :goto_32

    :cond_30
    const/4 v0, 0x0

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, 0x1

    :goto_33
    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->g:Z

    if-eqz v0, :cond_3e

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->h:Z

    if-eqz v0, :cond_3e

    goto :goto_3f

    :cond_3e
    const/4 v1, 0x0

    :goto_3f
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->f:Z

    goto :goto_52

    :cond_42
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->i:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->g:Z

    if-eqz v0, :cond_4f

    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->h:Z

    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :cond_50
    :goto_50
    iput-boolean v1, p0, Lcom/mbridge/msdk/foundation/controller/d;->f:Z

    :goto_52
    iget-boolean v0, p0, Lcom/mbridge/msdk/foundation/controller/d;->f:Z

    return v0
.end method

.method public final onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .registers 15

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_89

    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_7f

    const/4 v2, 0x0

    const-string v3, "IABTCF_VendorConsents"

    const-string v4, "IABTCF_AddtlConsent"

    const-string v5, "IABTCF_TCString"

    const-string v6, "IABTCF_gdprApplies"

    const-string v7, "IABTCF_PurposeConsents"

    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x1

    sparse-switch v1, :sswitch_data_8a

    goto :goto_45

    :sswitch_1e
    :try_start_1e
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    const/4 v0, 0x3

    goto :goto_45

    :sswitch_26
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    const/4 v0, 0x4

    goto :goto_45

    :sswitch_2e
    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    const/4 v0, 0x0

    goto :goto_45

    :sswitch_36
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_45

    const/4 v0, 0x1

    goto :goto_45

    :sswitch_3e
    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_7f

    if-eqz p2, :cond_45

    const/4 v0, 0x2

    :cond_45
    :goto_45
    const-string p2, ""

    if-eqz v0, :cond_71

    if-eq v0, v11, :cond_6a

    if-eq v0, v10, :cond_62

    if-eq v0, v9, :cond_5a

    if-eq v0, v8, :cond_52

    goto :goto_77

    :cond_52
    :try_start_52
    invoke-interface {p1, v4, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->c(Ljava/lang/String;)V

    goto :goto_77

    :cond_5a
    invoke-interface {p1, v3, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->b(Ljava/lang/String;)V

    goto :goto_77

    :cond_62
    invoke-interface {p1, v7, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mbridge/msdk/foundation/controller/d;->a(Ljava/lang/String;)V

    goto :goto_77

    :cond_6a
    invoke-interface {p1, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->e:I

    goto :goto_77

    :cond_71
    invoke-interface {p1, v5, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->a:Ljava/lang/String;

    :goto_77
    iget-object p1, p0, Lcom/mbridge/msdk/foundation/controller/d;->l:Lcom/mbridge/msdk/foundation/controller/d$a;

    if-eqz p1, :cond_89

    invoke-interface {p1}, Lcom/mbridge/msdk/foundation/controller/d$a;->a()V
    :try_end_7e
    .catchall {:try_start_52 .. :try_end_7e} :catchall_7f

    goto :goto_89

    :catchall_7f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TCStringManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-void

    :sswitch_data_8a
    .sparse-switch
        -0x7781843b -> :sswitch_3e
        0x4fc43fb -> :sswitch_36
        0x48a6de12 -> :sswitch_2e
        0x500b40d3 -> :sswitch_26
        0x56705a53 -> :sswitch_1e
    .end sparse-switch
.end method
