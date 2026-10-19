###### Class com.tapjoy.TJPrivacyPolicy (com.tapjoy.TJPrivacyPolicy)
.class public Lcom/tapjoy/TJPrivacyPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/TJPrivacyPolicy;


# instance fields
.field public b:Lcom/tapjoy/TJStatus;

.field public c:Lcom/tapjoy/TJStatus;

.field public d:Lcom/tapjoy/TJStatus;

.field public e:Ljava/lang/String;

.field public f:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    iput-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/tapjoy/TJPrivacyPolicy;
    .registers 1

    sget-object v0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJPrivacyPolicy;

    if-nez v0, :cond_b

    new-instance v0, Lcom/tapjoy/TJPrivacyPolicy;

    invoke-direct {v0}, Lcom/tapjoy/TJPrivacyPolicy;-><init>()V

    sput-object v0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJPrivacyPolicy;

    :cond_b
    sget-object v0, Lcom/tapjoy/TJPrivacyPolicy;->a:Lcom/tapjoy/TJPrivacyPolicy;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_2b

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    const-string v3, "below_consent_age"

    const-string v4, "tjcPrefrences"

    if-ne v1, v2, :cond_19

    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_2b

    :cond_19
    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final declared-synchronized b(Landroid/content/Context;)V
    .registers 8

    const-class v0, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Integer;

    monitor-enter p0

    if-eqz p1, :cond_d

    :try_start_7
    iget-object v2, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-nez v2, :cond_d

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    :cond_d
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p1

    iget-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v2, :cond_ef

    new-instance v3, Lcom/tapjoy/v;

    const-string v4, "tjcPrefrences"

    invoke-direct {v3, v2, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    const/4 v4, 0x0

    if-nez v2, :cond_5b

    const-string v2, "gdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    const-string v2, "gdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_41

    const-string v2, "gdpr"

    invoke-virtual {v3, v2, v4}, Lcom/tapjoy/v;->b(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3c

    sget-object v2, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    goto :goto_3e

    :cond_3c
    sget-object v2, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    :goto_3e
    iput-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    goto :goto_5b

    :cond_41
    const-string v2, "gdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_5b

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {v2}, Lcom/tapjoy/TJStatus;->e()I

    move-result v2

    const-string v5, "gdpr"

    invoke-virtual {v3, v5, v2}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    :cond_5b
    :goto_5b
    iget-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    if-nez v2, :cond_a3

    const-string v2, "cgdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a3

    const-string v2, "cgdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-class v5, Ljava/lang/String;

    if-ne v2, v5, :cond_89

    const-string v2, "cgdpr"

    const-string v5, ""

    invoke-virtual {v3, v2, v5}, Lcom/tapjoy/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "1"

    invoke-static {v2, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_84

    sget-object v2, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    goto :goto_86

    :cond_84
    sget-object v2, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    :goto_86
    iput-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    goto :goto_a3

    :cond_89
    const-string v2, "cgdpr"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_a3

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {v2}, Lcom/tapjoy/TJStatus;->e()I

    move-result v2

    const-string v5, "cgdpr"

    invoke-virtual {v3, v5, v2}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v2

    iput-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    :cond_a3
    :goto_a3
    iget-object v2, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    if-nez v2, :cond_e1

    const-string v2, "below_consent_age"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    const-string v2, "below_consent_age"

    invoke-virtual {v3, v2}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_c7

    const-string v0, "below_consent_age"

    invoke-virtual {v3, v0, v4}, Lcom/tapjoy/v;->b(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_c2

    sget-object v0, Lcom/tapjoy/TJStatus;->b:Lcom/tapjoy/TJStatus;

    goto :goto_c4

    :cond_c2
    sget-object v0, Lcom/tapjoy/TJStatus;->a:Lcom/tapjoy/TJStatus;

    :goto_c4
    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    goto :goto_e1

    :cond_c7
    const-string v0, "below_consent_age"

    invoke-virtual {v3, v0}, Lcom/tapjoy/v;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_e1

    sget-object v0, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->e()I

    move-result v0

    const-string v1, "below_consent_age"

    invoke-virtual {v3, v1, v0}, Lcom/tapjoy/v;->c(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/tapjoy/TJStatus;->valueOf(I)Lcom/tapjoy/TJStatus;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    :cond_e1
    :goto_e1
    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    if-nez v0, :cond_ef

    const-string v0, "us_privacy"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lcom/tapjoy/v;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    :cond_ef
    invoke-static {}, Lcom/tapjoy/TJPrivacyPolicy;->getInstance()Lcom/tapjoy/TJPrivacyPolicy;

    move-result-object p1

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_12d

    invoke-virtual {p1}, Lcom/tapjoy/TJPrivacyPolicy;->c()V

    invoke-virtual {p1}, Lcom/tapjoy/TJPrivacyPolicy;->d()V

    invoke-virtual {p1}, Lcom/tapjoy/TJPrivacyPolicy;->a()V

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_12d

    iget-object v0, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    if-eqz v0, :cond_12d

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11d

    new-instance v0, Lcom/tapjoy/v;

    iget-object p1, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    const-string v1, "tjcPrefrences"

    invoke-direct {v0, p1, v1}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "us_privacy"

    invoke-virtual {v0, p1}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_12d

    :cond_11d
    new-instance v0, Lcom/tapjoy/v;

    iget-object v1, p1, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    const-string v2, "tjcPrefrences"

    invoke-direct {v0, v1, v2}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    const-string v1, "us_privacy"

    invoke-virtual {v0, v1, p1}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_12d
    .catchall {:try_start_7 .. :try_end_12d} :catchall_12f

    :cond_12d
    :goto_12d
    monitor-exit p0

    return-void

    :catchall_12f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c()V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_2b

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    const-string v3, "gdpr"

    const-string v4, "tjcPrefrences"

    if-ne v1, v2, :cond_19

    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_2b

    :cond_19
    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->b:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final d()V
    .registers 6

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    if-eqz v1, :cond_2b

    sget-object v2, Lcom/tapjoy/TJStatus;->c:Lcom/tapjoy/TJStatus;

    const-string v3, "cgdpr"

    const-string v4, "tjcPrefrences"

    if-ne v1, v2, :cond_19

    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_2b

    :cond_19
    new-instance v1, Lcom/tapjoy/v;

    invoke-direct {v1, v0, v4}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {v0}, Lcom/tapjoy/TJStatus;->e()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public e()Lcom/tapjoy/TJStatus;
    .registers 2

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    return-object v0
.end method

.method public f(Lcom/tapjoy/TJStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->d:Lcom/tapjoy/TJStatus;

    invoke-virtual {p0}, Lcom/tapjoy/TJPrivacyPolicy;->a()V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    if-eqz v0, :cond_29

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    const-string v0, "us_privacy"

    const-string v1, "tjcPrefrences"

    if-eqz p1, :cond_1d

    new-instance p1, Lcom/tapjoy/v;

    iget-object v2, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/tapjoy/v;->f(Ljava/lang/String;)V

    goto :goto_29

    :cond_1d
    new-instance p1, Lcom/tapjoy/v;

    iget-object v2, p0, Lcom/tapjoy/TJPrivacyPolicy;->f:Landroid/content/Context;

    invoke-direct {p1, v2, v1}, Lcom/tapjoy/v;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tapjoy/TJPrivacyPolicy;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/tapjoy/v;->g(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public h(Lcom/tapjoy/TJStatus;)V
    .registers 2

    iput-object p1, p0, Lcom/tapjoy/TJPrivacyPolicy;->c:Lcom/tapjoy/TJStatus;

    invoke-virtual {p0}, Lcom/tapjoy/TJPrivacyPolicy;->d()V

    return-void
.end method
