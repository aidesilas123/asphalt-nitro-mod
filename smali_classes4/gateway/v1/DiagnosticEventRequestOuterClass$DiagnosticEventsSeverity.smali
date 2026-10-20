###### Class gateway.v1.DiagnosticEventRequestOuterClass.DiagnosticEventsSeverity (gateway.v1.DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity)
.class public final enum Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
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
    name = "DiagnosticEventsSeverity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;",
        ">;",
        "Lcom/google/protobuf/Internal$c;"
    }
.end annotation


# static fields
.field public static final enum a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum d:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum e:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum f:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field public static final enum g:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

.field private static final h:Lcom/google/protobuf/Internal$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic i:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;


# instance fields
.field private final j:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    new-instance v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v1, "DIAGNOSTIC_EVENTS_SEVERITY_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v3, "DIAGNOSTIC_EVENTS_SEVERITY_DEBUG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v5, "DIAGNOSTIC_EVENTS_SEVERITY_INFO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v5, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v7, "DIAGNOSTIC_EVENTS_SEVERITY_WARNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->d:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v7, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v9, "DIAGNOSTIC_EVENTS_SEVERITY_ERROR"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->e:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v9, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v11, "DIAGNOSTIC_EVENTS_SEVERITY_ALWAYS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->f:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v11, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const-string v13, "UNRECOGNIZED"

    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-direct {v11, v13, v14, v15}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->g:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    const/4 v13, 0x7

    new-array v13, v13, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->i:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    new-instance v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity$a;

    invoke-direct {v0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity$a;-><init>()V

    sput-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->h:Lcom/google/protobuf/Internal$d;

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

    iput p3, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->j:I

    return-void
.end method

.method public static forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
    .registers 2

    if-eqz p0, :cond_22

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1f

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_19

    const/4 v0, 0x4

    if-eq p0, v0, :cond_16

    const/4 v0, 0x5

    if-eq p0, v0, :cond_13

    const/4 p0, 0x0

    return-object p0

    :cond_13
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->f:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0

    :cond_16
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->e:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0

    :cond_19
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->d:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0

    :cond_1c
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->c:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0

    :cond_1f
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->b:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0

    :cond_22
    sget-object p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->a:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0
.end method

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$d;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$d<",
            "Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;",
            ">;"
        }
    .end annotation

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->h:Lcom/google/protobuf/Internal$d;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$e;
    .registers 1

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity$b;->a:Lcom/google/protobuf/Internal$e;

    return-object v0
.end method

.method public static valueOf(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->forNumber(I)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
    .registers 2

    const-class v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object p0
.end method

.method public static values()[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;
    .registers 1

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->i:[Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    invoke-virtual {v0}, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .registers 3

    sget-object v0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->g:Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;

    if-eq p0, v0, :cond_7

    iget v0, p0, Lgateway/v1/DiagnosticEventRequestOuterClass$DiagnosticEventsSeverity;->j:I

    return v0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
