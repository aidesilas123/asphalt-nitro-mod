###### Class com.applovin.impl.privacy.b.c (com.applovin.impl.privacy.b.c)
.class public Lcom/applovin/impl/privacy/b/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/impl/privacy/b/c$a;
    }
.end annotation


# instance fields
.field private final aow:Ljava/lang/String;

.field private final ayE:Lcom/applovin/impl/privacy/b/c$a;

.field private final ayF:Ljava/lang/Integer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final ayG:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private ayH:Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/applovin/impl/privacy/b/c;->aow:Ljava/lang/String;

    sget-object p2, Lcom/applovin/impl/privacy/b/c$a;->ayK:Lcom/applovin/impl/privacy/b/c$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "type"

    invoke-static {p1, v0, p2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Lcom/applovin/impl/privacy/b/c$a;->gw(I)Lcom/applovin/impl/privacy/b/c$a;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/privacy/b/c;->ayE:Lcom/applovin/impl/privacy/b/c$a;

    const-string p2, "id"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getInteger(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/applovin/impl/privacy/b/c;->ayF:Ljava/lang/Integer;

    const-string p2, "name"

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/impl/privacy/b/c;->ayG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Av()Lcom/applovin/impl/privacy/b/c$a;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->ayE:Lcom/applovin/impl/privacy/b/c$a;

    return-object v0
.end method

.method public Aw()Ljava/lang/Integer;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->ayF:Ljava/lang/Integer;

    return-object v0
.end method

.method public Ax()Ljava/lang/String;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->ayG:Ljava/lang/String;

    return-object v0
.end method

.method public Ay()Ljava/lang/Boolean;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->ayH:Ljava/lang/Boolean;

    return-object v0
.end method

.method public c(Ljava/lang/Boolean;)V
    .registers 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/applovin/impl/privacy/b/c;->ayH:Ljava/lang/Boolean;

    return-void
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->aow:Ljava/lang/String;

    return-object v0
.end method

.method public uI()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/applovin/impl/privacy/b/c;->ayH:Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_11

    :cond_9
    invoke-static {}, Lcom/applovin/impl/sdk/n;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/sdk/AppLovinPrivacySettings;->hasUserConsent(Landroid/content/Context;)Z

    move-result v0

    :goto_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/applovin/impl/privacy/b/c;->aow:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

###### Class com.applovin.impl.privacy.b.c.a (com.applovin.impl.privacy.b.c$a)
.class public final enum Lcom/applovin/impl/privacy/b/c$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/privacy/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/privacy/b/c$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ayI:Lcom/applovin/impl/privacy/b/c$a;

.field public static final enum ayJ:Lcom/applovin/impl/privacy/b/c$a;

.field public static final enum ayK:Lcom/applovin/impl/privacy/b/c$a;

.field private static final synthetic ayL:[Lcom/applovin/impl/privacy/b/c$a;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Lcom/applovin/impl/privacy/b/c$a;

    const-string v1, "TCF_VENDOR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/privacy/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/privacy/b/c$a;->ayI:Lcom/applovin/impl/privacy/b/c$a;

    new-instance v1, Lcom/applovin/impl/privacy/b/c$a;

    const-string v3, "ATP_NETWORK"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/privacy/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/privacy/b/c$a;->ayJ:Lcom/applovin/impl/privacy/b/c$a;

    new-instance v3, Lcom/applovin/impl/privacy/b/c$a;

    const-string v5, "OTHER"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/applovin/impl/privacy/b/c$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/applovin/impl/privacy/b/c$a;->ayK:Lcom/applovin/impl/privacy/b/c$a;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/applovin/impl/privacy/b/c$a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/applovin/impl/privacy/b/c$a;->ayL:[Lcom/applovin/impl/privacy/b/c$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static gv(I)Lcom/applovin/impl/privacy/b/c$a;
    .registers 2

    if-eqz p0, :cond_b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    sget-object p0, Lcom/applovin/impl/privacy/b/c$a;->ayK:Lcom/applovin/impl/privacy/b/c$a;

    return-object p0

    :cond_8
    sget-object p0, Lcom/applovin/impl/privacy/b/c$a;->ayJ:Lcom/applovin/impl/privacy/b/c$a;

    return-object p0

    :cond_b
    sget-object p0, Lcom/applovin/impl/privacy/b/c$a;->ayI:Lcom/applovin/impl/privacy/b/c$a;

    return-object p0
.end method

.method static synthetic gw(I)Lcom/applovin/impl/privacy/b/c$a;
    .registers 1

    invoke-static {p0}, Lcom/applovin/impl/privacy/b/c$a;->gv(I)Lcom/applovin/impl/privacy/b/c$a;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/privacy/b/c$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/privacy/b/c$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/privacy/b/c$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/privacy/b/c$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/privacy/b/c$a;->ayL:[Lcom/applovin/impl/privacy/b/c$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/privacy/b/c$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/privacy/b/c$a;

    return-object v0
.end method
