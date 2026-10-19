###### Class gateway.v1.DiagnosticEventRequestOuterClass.DiagnosticTagType (gateway.v1.DiagnosticEventRequestOuterClass$DiagnosticTagType)
.class public final enum Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
.super Ljava/lang/Enum;
.source "DiagnosticEventRequestOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/Internal$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgateway/v1/DiagnosticEventRequestOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiagnosticTagType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

.field public static final enum b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

.field public static final enum c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

.field private static final d:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic e:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;


# instance fields
.field private final f:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    new-instance v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    const-string v1, "DIAGNOSTIC_TAG_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    new-instance v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    const-string v3, "DIAGNOSTIC_TAG_TYPE_CUSTOM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    new-instance v3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    const-string v5, "UNRECOGNIZED"

    const/4 v6, 0x2

    const/4 v7, -0x1

    invoke-direct {v3, v5, v6, v7}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    const/4 v5, 0x3

    new-array v5, v5, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->e:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    new-instance v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType$a;

    invoke-direct {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType$a;-><init>()V

    sput-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->d:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->f:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
    .registers 2

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p0, v0, :cond_7

    const/4 p0, 0x0

    return-object p0

    :cond_7
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    return-object p0

    :cond_a
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->d:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
    .registers 2

    const-class v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;
    .registers 1

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->e:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    invoke-virtual {v0}, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticTagType;->f:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
