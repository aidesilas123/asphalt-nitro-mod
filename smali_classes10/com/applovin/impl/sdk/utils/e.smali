###### Class com.applovin.impl.sdk.utils.e (com.applovin.impl.sdk.utils.e)
.class public Lcom/applovin/impl/sdk/utils/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static aVw:Lcom/applovin/impl/sdk/utils/e;

.field private static final aVx:Ljava/lang/Object;


# instance fields
.field private final aVA:Z

.field private final aVy:Landroid/os/Bundle;

.field private final aVz:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/applovin/impl/sdk/utils/e;->aVx:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 11

    const-string v0, "AndroidManifest"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;
    :try_end_16
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_16} :catch_1c
    .catchall {:try_start_6 .. :try_end_16} :catchall_19

    :goto_16
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/e;->aVy:Landroid/os/Bundle;

    goto :goto_23

    :catchall_19
    move-exception p1

    goto/16 :goto_99

    :catch_1c
    move-exception v2

    :try_start_1d
    const-string v3, "Failed to get meta data."

    invoke-static {v0, v3, v2}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_19

    goto :goto_16

    :goto_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v2, "AndroidManifest.xml"

    invoke-virtual {p1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2
    :try_end_32
    .catchall {:try_start_24 .. :try_end_32} :catchall_87

    const/4 v3, 0x0

    const/4 v4, 0x0

    :cond_34
    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v5, v2, :cond_7b

    :try_start_38
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v5, "application"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7b

    const/4 v2, 0x0

    :goto_45
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v5

    if-ge v2, v5, :cond_7b

    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "networkSecurityConfig"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_68

    invoke-virtual {v7, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_78

    :cond_68
    const-string v8, "usesCleartextTraffic"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_78
    :goto_78
    add-int/lit8 v2, v2, 0x1

    goto :goto_45

    :cond_7b
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2
    :try_end_7f
    .catchall {:try_start_38 .. :try_end_7f} :catchall_84

    if-ne v2, v6, :cond_34

    iput v3, p0, Lcom/applovin/impl/sdk/utils/e;->aVz:I

    goto :goto_90

    :catchall_84
    move-exception p1

    move v1, v3

    goto :goto_89

    :catchall_87
    move-exception p1

    const/4 v4, 0x0

    :goto_89
    :try_start_89
    const-string v2, "Failed to parse AndroidManifest.xml."

    invoke-static {v0, v2, p1}, Lcom/applovin/impl/sdk/x;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8e
    .catchall {:try_start_89 .. :try_end_8e} :catchall_93

    iput v1, p0, Lcom/applovin/impl/sdk/utils/e;->aVz:I

    :goto_90
    iput-boolean v4, p0, Lcom/applovin/impl/sdk/utils/e;->aVA:Z

    return-void

    :catchall_93
    move-exception p1

    iput v1, p0, Lcom/applovin/impl/sdk/utils/e;->aVz:I

    iput-boolean v4, p0, Lcom/applovin/impl/sdk/utils/e;->aVA:Z

    throw p1

    :goto_99
    iput-object v1, p0, Lcom/applovin/impl/sdk/utils/e;->aVy:Landroid/os/Bundle;

    throw p1
.end method

.method public static X(Landroid/content/Context;)Lcom/applovin/impl/sdk/utils/e;
    .registers 3

    sget-object v0, Lcom/applovin/impl/sdk/utils/e;->aVx:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/applovin/impl/sdk/utils/e;->aVw:Lcom/applovin/impl/sdk/utils/e;

    if-nez v1, :cond_e

    new-instance v1, Lcom/applovin/impl/sdk/utils/e;

    invoke-direct {v1, p0}, Lcom/applovin/impl/sdk/utils/e;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/applovin/impl/sdk/utils/e;->aVw:Lcom/applovin/impl/sdk/utils/e;

    :cond_e
    sget-object p0, Lcom/applovin/impl/sdk/utils/e;->aVw:Lcom/applovin/impl/sdk/utils/e;

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public L(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/e;->aVy:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_8
    return-object p2
.end method

.method public dy(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/e;->aVy:Landroid/os/Bundle;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public e(Ljava/lang/String;Z)Z
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/sdk/utils/e;->aVy:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_8
    return p2
.end method
