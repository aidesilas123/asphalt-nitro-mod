###### Class com.google.common.base.StandardSystemProperty (com.google.common.base.StandardSystemProperty)
.class public final enum Lcom/google/common/base/StandardSystemProperty;
.super Ljava/lang/Enum;
.source "StandardSystemProperty.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/base/StandardSystemProperty;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum A:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum B:Lcom/google/common/base/StandardSystemProperty;

.field private static final synthetic C:[Lcom/google/common/base/StandardSystemProperty;

.field public static final enum a:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum b:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum c:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum d:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum e:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum f:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum g:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum h:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum i:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum j:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum k:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum l:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum m:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum n:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum o:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum p:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum q:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum r:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum s:Lcom/google/common/base/StandardSystemProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum t:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum u:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum v:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum w:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum x:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum y:Lcom/google/common/base/StandardSystemProperty;

.field public static final enum z:Lcom/google/common/base/StandardSystemProperty;


# instance fields
.field private final D:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VERSION"

    const/4 v2, 0x0

    const-string v3, "java.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->a:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VENDOR"

    const/4 v2, 0x1

    const-string v3, "java.vendor"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->b:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VENDOR_URL"

    const/4 v2, 0x2

    const-string v3, "java.vendor.url"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->c:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_HOME"

    const/4 v2, 0x3

    const-string v3, "java.home"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->d:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_SPECIFICATION_VERSION"

    const/4 v2, 0x4

    const-string v3, "java.vm.specification.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->e:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_SPECIFICATION_VENDOR"

    const/4 v2, 0x5

    const-string v3, "java.vm.specification.vendor"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->f:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_SPECIFICATION_NAME"

    const/4 v2, 0x6

    const-string v3, "java.vm.specification.name"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->g:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_VERSION"

    const/4 v2, 0x7

    const-string v3, "java.vm.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->h:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_VENDOR"

    const/16 v2, 0x8

    const-string v3, "java.vm.vendor"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->i:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_VM_NAME"

    const/16 v2, 0x9

    const-string v3, "java.vm.name"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->j:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_SPECIFICATION_VERSION"

    const/16 v2, 0xa

    const-string v3, "java.specification.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->k:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_SPECIFICATION_VENDOR"

    const/16 v2, 0xb

    const-string v3, "java.specification.vendor"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->l:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_SPECIFICATION_NAME"

    const/16 v2, 0xc

    const-string v3, "java.specification.name"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->m:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_CLASS_VERSION"

    const/16 v2, 0xd

    const-string v3, "java.class.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->n:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_CLASS_PATH"

    const/16 v2, 0xe

    const-string v3, "java.class.path"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->o:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_LIBRARY_PATH"

    const/16 v2, 0xf

    const-string v3, "java.library.path"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->p:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_IO_TMPDIR"

    const/16 v2, 0x10

    const-string v3, "java.io.tmpdir"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->q:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_COMPILER"

    const/16 v2, 0x11

    const-string v3, "java.compiler"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->r:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "JAVA_EXT_DIRS"

    const/16 v2, 0x12

    const-string v3, "java.ext.dirs"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->s:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "OS_NAME"

    const/16 v2, 0x13

    const-string v3, "os.name"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->t:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "OS_ARCH"

    const/16 v2, 0x14

    const-string v3, "os.arch"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->u:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "OS_VERSION"

    const/16 v2, 0x15

    const-string v3, "os.version"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->v:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "FILE_SEPARATOR"

    const/16 v2, 0x16

    const-string v3, "file.separator"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->w:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "PATH_SEPARATOR"

    const/16 v2, 0x17

    const-string v3, "path.separator"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->x:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "LINE_SEPARATOR"

    const/16 v2, 0x18

    const-string v3, "line.separator"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->y:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "USER_NAME"

    const/16 v2, 0x19

    const-string v3, "user.name"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->z:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "USER_HOME"

    const/16 v2, 0x1a

    const-string v3, "user.home"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->A:Lcom/google/common/base/StandardSystemProperty;

    new-instance v0, Lcom/google/common/base/StandardSystemProperty;

    const-string v1, "USER_DIR"

    const/16 v2, 0x1b

    const-string v3, "user.dir"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/common/base/StandardSystemProperty;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->B:Lcom/google/common/base/StandardSystemProperty;

    invoke-static {}, Lcom/google/common/base/StandardSystemProperty;->e()[Lcom/google/common/base/StandardSystemProperty;

    move-result-object v0

    sput-object v0, Lcom/google/common/base/StandardSystemProperty;->C:[Lcom/google/common/base/StandardSystemProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/common/base/StandardSystemProperty;->D:Ljava/lang/String;

    return-void
.end method

.method private static synthetic e()[Lcom/google/common/base/StandardSystemProperty;
    .registers 3

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/google/common/base/StandardSystemProperty;

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->a:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->b:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->c:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->d:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->e:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->f:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->g:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->h:Lcom/google/common/base/StandardSystemProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->i:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->j:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->k:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->l:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->m:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->n:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->o:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->p:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->q:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->r:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->s:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->t:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->u:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->v:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->w:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->x:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->y:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->z:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->A:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/base/StandardSystemProperty;->B:Lcom/google/common/base/StandardSystemProperty;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/base/StandardSystemProperty;
    .registers 2

    const-class v0, Lcom/google/common/base/StandardSystemProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/base/StandardSystemProperty;

    return-object p0
.end method

.method public static values()[Lcom/google/common/base/StandardSystemProperty;
    .registers 1

    sget-object v0, Lcom/google/common/base/StandardSystemProperty;->C:[Lcom/google/common/base/StandardSystemProperty;

    invoke-virtual {v0}, [Lcom/google/common/base/StandardSystemProperty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/base/StandardSystemProperty;

    return-object v0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->D:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/common/base/StandardSystemProperty;->D:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/base/StandardSystemProperty;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
