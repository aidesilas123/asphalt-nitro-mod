###### Class com.google.protobuf.k0 (com.google.protobuf.k0)
.class final Lcom/google/protobuf/k0;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/protobuf/m1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/k0$b;
    }
.end annotation


# static fields
.field private static final EMPTY_FACTORY:Lcom/google/protobuf/p0;


# instance fields
.field private final messageInfoFactory:Lcom/google/protobuf/p0;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/protobuf/k0$a;

    invoke-direct {v0}, Lcom/google/protobuf/k0$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/k0;->EMPTY_FACTORY:Lcom/google/protobuf/p0;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/google/protobuf/k0;->getDefaultMessageInfoFactory()Lcom/google/protobuf/p0;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/k0;-><init>(Lcom/google/protobuf/p0;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/p0;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/p0;

    iput-object p1, p0, Lcom/google/protobuf/k0;->messageInfoFactory:Lcom/google/protobuf/p0;

    return-void
.end method

.method private static getDefaultMessageInfoFactory()Lcom/google/protobuf/p0;
    .registers 4

    new-instance v0, Lcom/google/protobuf/k0$b;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/google/protobuf/p0;

    invoke-static {}, Lcom/google/protobuf/GeneratedMessageInfoFactory;->getInstance()Lcom/google/protobuf/GeneratedMessageInfoFactory;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {}, Lcom/google/protobuf/k0;->getDescriptorMessageInfoFactory()Lcom/google/protobuf/p0;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lcom/google/protobuf/k0$b;-><init>([Lcom/google/protobuf/p0;)V

    return-object v0
.end method

.method private static getDescriptorMessageInfoFactory()Lcom/google/protobuf/p0;
    .registers 4

    :try_start_0
    const-string v0, "com.google.protobuf.DescriptorMessageInfoFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/p0;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    return-object v0

    :catch_19
    sget-object v0, Lcom/google/protobuf/k0;->EMPTY_FACTORY:Lcom/google/protobuf/p0;

    return-object v0
.end method

.method private static isProto2(Lcom/google/protobuf/o0;)Z
    .registers 2

    invoke-interface {p0}, Lcom/google/protobuf/o0;->getSyntax()Lcom/google/protobuf/ProtoSyntax;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/ProtoSyntax;->PROTO2:Lcom/google/protobuf/ProtoSyntax;

    if-ne p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method private static newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;)Lcom/google/protobuf/l1;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/o0;",
            ")",
            "Lcom/google/protobuf/l1<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {p1}, Lcom/google/protobuf/k0;->isProto2(Lcom/google/protobuf/o0;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/google/protobuf/b1;->lite()Lcom/google/protobuf/z0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/i0;->lite()Lcom/google/protobuf/i0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/y1;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/w;->lite()Lcom/google/protobuf/u;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/n0;->lite()Lcom/google/protobuf/l0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/t0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    goto :goto_40

    :cond_29
    invoke-static {}, Lcom/google/protobuf/b1;->lite()Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/i0;->lite()Lcom/google/protobuf/i0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/y1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/n0;->lite()Lcom/google/protobuf/l0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/t0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    :goto_40
    return-object p0

    :cond_41
    invoke-static {p1}, Lcom/google/protobuf/k0;->isProto2(Lcom/google/protobuf/o0;)Z

    move-result v0

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/google/protobuf/b1;->full()Lcom/google/protobuf/z0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/i0;->full()Lcom/google/protobuf/i0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/protobuf/y1;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/w;->full()Lcom/google/protobuf/u;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/n0;->full()Lcom/google/protobuf/l0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/t0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    goto :goto_79

    :cond_62
    invoke-static {}, Lcom/google/protobuf/b1;->full()Lcom/google/protobuf/z0;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/i0;->full()Lcom/google/protobuf/i0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto3UnknownFieldSetSchema()Lcom/google/protobuf/y1;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/n0;->full()Lcom/google/protobuf/l0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/t0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;Lcom/google/protobuf/z0;Lcom/google/protobuf/i0;Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/l0;)Lcom/google/protobuf/t0;

    move-result-object p0

    :goto_79
    return-object p0
.end method


# virtual methods
.method public createSchema(Ljava/lang/Class;)Lcom/google/protobuf/l1;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/l1<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/SchemaUtil;->requireGeneratedMessage(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/protobuf/k0;->messageInfoFactory:Lcom/google/protobuf/p0;

    invoke-interface {v0, p1}, Lcom/google/protobuf/p0;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/o0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/o0;->isMessageSetWireFormat()Z

    move-result v1

    if-eqz v1, :cond_39

    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_28

    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/y1;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/w;->lite()Lcom/google/protobuf/u;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/o0;->getDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/u0;->newSchema(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/q0;)Lcom/google/protobuf/u0;

    move-result-object p1

    return-object p1

    :cond_28
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->proto2UnknownFieldSetSchema()Lcom/google/protobuf/y1;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/w;->full()Lcom/google/protobuf/u;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/o0;->getDefaultInstance()Lcom/google/protobuf/q0;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/u0;->newSchema(Lcom/google/protobuf/y1;Lcom/google/protobuf/u;Lcom/google/protobuf/q0;)Lcom/google/protobuf/u0;

    move-result-object p1

    return-object p1

    :cond_39
    invoke-static {p1, v0}, Lcom/google/protobuf/k0;->newSchema(Ljava/lang/Class;Lcom/google/protobuf/o0;)Lcom/google/protobuf/l1;

    move-result-object p1

    return-object p1
.end method
