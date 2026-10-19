###### Class com.applovin.impl.privacy.a.e.a (com.applovin.impl.privacy.a.e$a)
.class public final enum Lcom/applovin/impl/privacy/a/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/privacy/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/applovin/impl/privacy/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum axV:Lcom/applovin/impl/privacy/a/e$a;

.field public static final enum axW:Lcom/applovin/impl/privacy/a/e$a;

.field private static final synthetic axX:[Lcom/applovin/impl/privacy/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/applovin/impl/privacy/a/e$a;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/applovin/impl/privacy/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/applovin/impl/privacy/a/e$a;->axV:Lcom/applovin/impl/privacy/a/e$a;

    new-instance v1, Lcom/applovin/impl/privacy/a/e$a;

    const-string v3, "IS_AL_GDPR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/applovin/impl/privacy/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/applovin/impl/privacy/a/e$a;->axW:Lcom/applovin/impl/privacy/a/e$a;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/applovin/impl/privacy/a/e$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/applovin/impl/privacy/a/e$a;->axX:[Lcom/applovin/impl/privacy/a/e$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/applovin/impl/privacy/a/e$a;
    .registers 2

    const-class v0, Lcom/applovin/impl/privacy/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/applovin/impl/privacy/a/e$a;

    return-object p0
.end method

.method public static values()[Lcom/applovin/impl/privacy/a/e$a;
    .registers 1

    sget-object v0, Lcom/applovin/impl/privacy/a/e$a;->axX:[Lcom/applovin/impl/privacy/a/e$a;

    invoke-virtual {v0}, [Lcom/applovin/impl/privacy/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/applovin/impl/privacy/a/e$a;

    return-object v0
.end method
