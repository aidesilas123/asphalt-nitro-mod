###### Class com.google.protobuf.b1 (com.google.protobuf.b1)
.class final Lcom/google/protobuf/b1;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# static fields
.field private static final FULL_SCHEMA:Lcom/google/protobuf/z0;

.field private static final LITE_SCHEMA:Lcom/google/protobuf/z0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/google/protobuf/b1;->loadSchemaForFullRuntime()Lcom/google/protobuf/z0;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/b1;->FULL_SCHEMA:Lcom/google/protobuf/z0;

    new-instance v0, Lcom/google/protobuf/a1;

    invoke-direct {v0}, Lcom/google/protobuf/a1;-><init>()V

    sput-object v0, Lcom/google/protobuf/b1;->LITE_SCHEMA:Lcom/google/protobuf/z0;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static full()Lcom/google/protobuf/z0;
    .registers 1

    sget-object v0, Lcom/google/protobuf/b1;->FULL_SCHEMA:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method static lite()Lcom/google/protobuf/z0;
    .registers 1

    sget-object v0, Lcom/google/protobuf/b1;->LITE_SCHEMA:Lcom/google/protobuf/z0;

    return-object v0
.end method

.method private static loadSchemaForFullRuntime()Lcom/google/protobuf/z0;
    .registers 3

    :try_start_0
    const-string v0, "com.google.protobuf.NewInstanceSchemaFull"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/z0;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object v0

    :catch_16
    const/4 v0, 0x0

    return-object v0
.end method
