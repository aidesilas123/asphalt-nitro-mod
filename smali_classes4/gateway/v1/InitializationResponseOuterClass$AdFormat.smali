###### Class gateway.v1.InitializationResponseOuterClass.AdFormat (gateway.v1.InitializationResponseOuterClass$AdFormat)
.class public final enum Lgateway/v1/InitializationResponseOuterClass$AdFormat;
.super Ljava/lang/Enum;
.source "InitializationResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/InitializationResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdFormat"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field public static final enum e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

.field private static final f:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;


# instance fields
.field private final h:I


# direct methods
.method static constructor <clinit>()V
    .registers 12

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v1, "AD_FORMAT_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v1, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v3, "AD_FORMAT_INTERSTITIAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v3, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v5, "AD_FORMAT_REWARDED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v5, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v7, "AD_FORMAT_BANNER"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v7, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const-string v9, "UNRECOGNIZED"

    const/4 v10, 0x4

    const/4 v11, -0x1

    invoke-direct {v7, v9, v10, v11}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    const/4 v9, 0x5

    new-array v9, v9, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    sput-object v9, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    new-instance v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;

    invoke-direct {v0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat$a;-><init>()V

    sput-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->f:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->h:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    if-eqz p0, :cond_16

    const/4 v0, 0x1

    if-eq p0, v0, :cond_13

    const/4 v0, 0x2

    if-eq p0, v0, :cond_10

    const/4 v0, 0x3

    if-eq p0, v0, :cond_d

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->d:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_10
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->c:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->b:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->a:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/InitializationResponseOuterClass$AdFormat;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->f:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->forNumber(I)Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 2

    const-class v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object p0
.end method

.method public static values()[Lgateway/v1/InitializationResponseOuterClass$AdFormat;
    .registers 1

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->g:[Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    invoke-virtual {v0}, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->e:Lgateway/v1/InitializationResponseOuterClass$AdFormat;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/InitializationResponseOuterClass$AdFormat;->h:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
