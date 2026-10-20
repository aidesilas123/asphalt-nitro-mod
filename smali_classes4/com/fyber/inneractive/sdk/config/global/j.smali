###### Class com.fyber.inneractive.sdk.config.global.j (com.fyber.inneractive.sdk.config.global.j)
.class public Lcom/fyber/inneractive/sdk/config/global/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/fyber/inneractive/sdk/config/global/d;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/fyber/inneractive/sdk/config/global/e;)Z
    .registers 11

    iget-object p1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_133

    invoke-static {}, Lcom/fyber/inneractive/sdk/external/InneractiveAdManager;->getVersion()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "j"

    aput-object v3, v2, v0

    const/4 v4, 0x1

    aput-object p1, v2, v4

    const-string v5, "%s: shouldApply - running version: %s"

    invoke-static {v5, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v0

    iget-object v5, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    aput-object v5, v2, v4

    const-string v5, "%s: shouldApply - filter version: %s"

    invoke-static {v5, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v2, "\\."

    const/4 v5, 0x4

    invoke-virtual {p1, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    invoke-virtual {v7, v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    sub-int/2addr v5, v4

    aget-object v5, v2, v5

    const-string v7, "*"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "%s: shouldApplyByAsterix - version aligned with filter. do not apply"

    if-eqz v7, :cond_92

    const/4 p1, 0x0

    :goto_45
    array-length v5, v2

    sub-int/2addr v5, v4

    if-ge p1, v5, :cond_6e

    array-length v5, v6

    if-ge v5, p1, :cond_57

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v0

    const-string v2, "%s: shouldApplyByAsterix - running version is shorter than filter. applying"

    invoke-static {v2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_55
    const/4 p1, 0x1

    goto :goto_76

    :cond_57
    aget-object v5, v6, p1

    aget-object v7, v2, p1

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6b

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v0

    const-string v2, "%s: shouldApplyByAsterix - running version does not comply with filter. applying"

    invoke-static {v2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_55

    :cond_6b
    add-int/lit8 p1, p1, 0x1

    goto :goto_45

    :cond_6e
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v0

    invoke-static {v8, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_76
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%s: shouldApply - * version match: %b"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_8c

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    goto :goto_91

    :cond_8c
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    if-nez p1, :cond_91

    const/4 v0, 0x1

    :cond_91
    :goto_91
    return v0

    :cond_92
    const-string v7, "+"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_111

    const/4 p1, 0x0

    :goto_9b
    array-length v5, v2

    sub-int/2addr v5, v4

    if-ge p1, v5, :cond_ed

    array-length v5, v6

    if-ge v5, p1, :cond_ad

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v0

    const-string v2, "%s: shouldApplyByPlus - running version is shorter than filter. applying"

    invoke-static {v2, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_ab
    const/4 p1, 0x1

    goto :goto_f5

    :cond_ad
    :try_start_ad
    aget-object v5, v2, p1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v7, v6, p1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v7, v5, :cond_cd

    const-string p1, "%s: shouldApplyByPlus - running version is greater than the filter\'s version. no filter needed"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f4

    :cond_cd
    if-ge v7, v5, :cond_d9

    const-string p1, "%s: shouldApplyByPlus - running version is lower than the filter\'s version. applying filter "

    new-array v2, v4, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_d8
    .catch Ljava/lang/NumberFormatException; {:try_start_ad .. :try_end_d8} :catch_dc

    goto :goto_ab

    :cond_d9
    add-int/lit8 p1, p1, 0x1

    goto :goto_9b

    :catch_dc
    move-exception p1

    new-array v2, v1, [Ljava/lang/Object;

    aput-object v3, v2, v0

    invoke-virtual {p1}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    const-string p1, "%s: shouldApplyByPlus - Error in version string! Not a number. %s"

    invoke-static {p1, v2}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ab

    :cond_ed
    new-array p1, v4, [Ljava/lang/Object;

    aput-object v3, p1, v0

    invoke-static {v8, p1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_f4
    const/4 p1, 0x0

    :goto_f5
    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%s: shouldApply - + version match: %b"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_10b

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    goto :goto_110

    :cond_10b
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    if-nez p1, :cond_110

    const/4 v0, 0x1

    :cond_110
    :goto_110
    return v0

    :cond_111
    iget-object v2, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v0

    xor-int/lit8 v2, p1, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "%s: shouldApply - exact version match: %b"

    invoke-static {v2, v1}, Lcom/fyber/inneractive/sdk/util/IAlog;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p1, :cond_12e

    iget-boolean v0, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    goto :goto_133

    :cond_12e
    iget-boolean p1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    if-nez p1, :cond_133

    const/4 v0, 0x1

    :cond_133
    :goto_133
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "sdk"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->a:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/fyber/inneractive/sdk/config/global/j;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "%s - %s include: %b"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
