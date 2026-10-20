###### Class com.google.protobuf.i0 (com.google.protobuf.i0)
.class abstract Lcom/google/protobuf/i0;
.super Ljava/lang/Object;
.source "ListFieldSchema.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/i0$c;,
        Lcom/google/protobuf/i0$b;
    }
.end annotation


# static fields
.field private static final FULL_INSTANCE:Lcom/google/protobuf/i0;

.field private static final LITE_INSTANCE:Lcom/google/protobuf/i0;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/google/protobuf/i0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/i0$b;-><init>(Lcom/google/protobuf/i0$a;)V

    sput-object v0, Lcom/google/protobuf/i0;->FULL_INSTANCE:Lcom/google/protobuf/i0;

    new-instance v0, Lcom/google/protobuf/i0$c;

    invoke-direct {v0, v1}, Lcom/google/protobuf/i0$c;-><init>(Lcom/google/protobuf/i0$a;)V

    sput-object v0, Lcom/google/protobuf/i0;->LITE_INSTANCE:Lcom/google/protobuf/i0;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/i0$a;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/protobuf/i0;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/i0;
    .registers 1

    sget-object v0, Lcom/google/protobuf/i0;->FULL_INSTANCE:Lcom/google/protobuf/i0;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/i0;
    .registers 1

    sget-object v0, Lcom/google/protobuf/i0;->LITE_INSTANCE:Lcom/google/protobuf/i0;

    return-object v0
.end method


# virtual methods
.method abstract makeImmutableListAt(Ljava/lang/Object;J)V
.end method

.method abstract mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation
.end method

.method abstract mutableListAt(Ljava/lang/Object;J)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation
.end method
