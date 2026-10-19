###### Class gateway.v1.ClientInfoOuterClass.MediationProvider (gateway.v1.ClientInfoOuterClass$MediationProvider)
.class public final enum Lgateway/v1/ClientInfoOuterClass$MediationProvider;
.super Ljava/lang/Enum;
.source "ClientInfoOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/ClientInfoOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MediationProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field public static final enum f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

.field private static final g:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;


# instance fields
.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v1, "MEDIATION_PROVIDER_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v3, "MEDIATION_PROVIDER_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v5, "MEDIATION_PROVIDER_ADMOB"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v7, "MEDIATION_PROVIDER_MAX"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v9, "MEDIATION_PROVIDER_LEVELPLAY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const-string v11, "UNRECOGNIZED"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v9, v11, v12, v13}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    const/4 v11, 0x6

    new-array v11, v11, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    new-instance v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;

    invoke-direct {v0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider$a;-><init>()V

    sput-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->g:Lcom/google/protobuf/Internal$d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->i:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    if-eqz p0, :cond_1c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_19

    const/4 v0, 0x2

    if-eq p0, v0, :cond_16

    const/4 v0, 0x3

    if-eq p0, v0, :cond_13

    const/4 v0, 0x4

    if-eq p0, v0, :cond_10

    const/4 p0, 0x0

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->e:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->d:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->c:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_19
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->b:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0

    :cond_1c
    sget-object p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->a:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/ClientInfoOuterClass$MediationProvider;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->g:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->forNumber(I)Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 2

    const-class v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object p0
.end method

.method public static values()[Lgateway/v1/ClientInfoOuterClass$MediationProvider;
    .registers 1

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->h:[Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    invoke-virtual {v0}, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->f:Lgateway/v1/ClientInfoOuterClass$MediationProvider;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/ClientInfoOuterClass$MediationProvider;->i:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
