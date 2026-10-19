###### Class com.applovin.impl.b.i (com.applovin.impl.b.i)
.class public Lcom/applovin/impl/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/b/i$a;
    }
.end annotation


# instance fields
.field private aXJ:Lcom/applovin/impl/b/i$a;

.field private aXK:Landroid/net/Uri;

.field private aXL:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcom/applovin/impl/sdk/utils/y;Lcom/applovin/impl/b/i;Lcom/applovin/impl/sdk/n;)Lcom/applovin/impl/b/i;
    .registers 5

    if-eqz p0, :cond_95

    if-eqz p2, :cond_8d

    if-eqz p1, :cond_7

    goto :goto_c

    :cond_7
    :try_start_7
    new-instance p1, Lcom/applovin/impl/b/i;

    invoke-direct {p1}, Lcom/applovin/impl/b/i;-><init>()V

    :goto_c
    iget-object v0, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    if-nez v0, :cond_6e

    iget-object v0, p1, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    const-string v0, "StaticResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/b/i;->a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    sget-object p0, Lcom/applovin/impl/b/i$a;->aXN:Lcom/applovin/impl/b/i$a;

    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    return-object p1

    :cond_2f
    const-string v0, "IFrameResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/b/i;->a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4f

    sget-object p0, Lcom/applovin/impl/b/i$a;->aXO:Lcom/applovin/impl/b/i$a;

    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4c

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    goto :goto_4e

    :cond_4c
    iput-object v0, p1, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    :goto_4e
    return-object p1

    :cond_4f
    const-string v0, "HTMLResource"

    invoke-static {p0, v0}, Lcom/applovin/impl/b/i;->a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/applovin/impl/b/i$a;->aXP:Lcom/applovin/impl/b/i$a;

    iput-object v0, p1, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    invoke-static {p0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    goto :goto_6e

    :cond_6c
    iput-object p0, p1, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;
    :try_end_6e
    .catchall {:try_start_7 .. :try_end_6e} :catchall_6f

    :cond_6e
    :goto_6e
    return-object p1

    :catchall_6f
    move-exception p0

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    invoke-static {}, Lcom/applovin/impl/sdk/x;->Fn()Z

    move-result p1

    const-string v0, "VastNonVideoResource"

    if-eqz p1, :cond_84

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->BN()Lcom/applovin/impl/sdk/x;

    move-result-object p1

    const-string v1, "Error occurred while initializing"

    invoke-virtual {p1, v0, v1, p0}, Lcom/applovin/impl/sdk/x;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_84
    invoke-virtual {p2}, Lcom/applovin/impl/sdk/n;->Cs()Lcom/applovin/impl/sdk/r;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/applovin/impl/sdk/r;->g(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    :cond_8d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No sdk specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_95
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "No node specified."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Lcom/applovin/impl/sdk/utils/y;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/applovin/impl/sdk/utils/y;->dK(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/y;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/applovin/impl/sdk/utils/y;->LK()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public MA()Lcom/applovin/impl/b/i$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    return-object v0
.end method

.method public MB()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    return-object v0
.end method

.method public MC()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    return-object v0
.end method

.method public dR(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/applovin/impl/b/i;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/applovin/impl/b/i;

    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    iget-object v3, p1, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    if-eqz v1, :cond_20

    iget-object v3, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_25

    goto :goto_24

    :cond_20
    iget-object v1, p1, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    if-eqz v1, :cond_25

    :goto_24
    return v2

    :cond_25
    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    iget-object p1, p1, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    if-eqz v1, :cond_30

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_34

    :cond_30
    if-nez p1, :cond_33

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    if-eqz v2, :cond_16

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VastNonVideoResource{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXJ:Lcom/applovin/impl/b/i$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", resourceContents=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/applovin/impl/b/i;->aXL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Landroid/net/Uri;)V
    .registers 2

    iput-object p1, p0, Lcom/applovin/impl/b/i;->aXK:Landroid/net/Uri;

    return-void
.end method

###### Class com.applovin.impl.b.i.a (com.applovin.impl.b.i$a)
.class public final enum Lcom/applovin/impl/b/i$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/b/i$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aXM:Lcom/applovin/impl/b/i$a;

.field public static final enum aXN:Lcom/applovin/impl/b/i$a;

.field public static final enum aXO:Lcom/applovin/impl/b/i$a;

.field public static final enum aXP:Lcom/applovin/impl/b/i$a;

.field private static final synthetic aXQ:[Lcom/applovin/impl/b/i$a;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Lcom/applovin/impl/b/i$a;

    const-string v1, "UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/b/i$a;->aXM:Lcom/applovin/impl/b/i$a;

    new-instance v1, Lcom/applovin/impl/b/i$a;

    const-string v3, "STATIC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/b/i$a;->aXN:Lcom/applovin/impl/b/i$a;

    new-instance v3, Lcom/applovin/impl/b/i$a;

    const-string v5, "IFRAME"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/applovin/impl/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/b/i$a;->aXO:Lcom/applovin/impl/b/i$a;

    new-instance v5, Lcom/applovin/impl/b/i$a;

    const-string v7, "HTML"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/applovin/impl/b/i$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/applovin/impl/b/i$a;->aXP:Lcom/applovin/impl/b/i$a;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/applovin/impl/b/i$a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lcom/applovin/impl/b/i$a;->aXQ:[Lcom/applovin/impl/b/i$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/b/i$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/b/i$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/b/i$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/b/i$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/b/i$a;->aXQ:[Lcom/applovin/impl/b/i$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/b/i$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/b/i$a;

    return-object v0
.end method
