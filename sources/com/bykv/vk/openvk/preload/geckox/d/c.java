package com.bykv.vk.openvk.preload.geckox.d;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.text.TextUtils;
import android.util.Pair;
import com.bykv.vk.openvk.preload.geckox.model.CheckRequestBodyModel;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.model.ComponentModel;
import com.bykv.vk.openvk.preload.geckox.model.UpdatePackage;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import java.io.File;
import java.io.FileFilter;
import java.io.StringReader;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: GetServerChannelVersionInterceptorMulti.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends com.bykv.vk.openvk.preload.b.d<Map<String, List<Pair<String, Long>>>, List<UpdatePackage>> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.bykv.vk.openvk.preload.geckox.b f584g;
    private Map<String, Map<String, Object>> h;
    private Map<String, List<CheckRequestBodyModel.TargetChannel>> i;
    private com.bykv.vk.openvk.preload.geckox.e.a j;
    private String k;
    private com.bykv.vk.openvk.preload.geckox.statistic.model.b l = new com.bykv.vk.openvk.preload.geckox.statistic.model.b();

    /* JADX INFO: compiled from: GetServerChannelVersionInterceptorMulti.java */
    public static class a extends RuntimeException {
        a(String str) {
            super(str);
        }
    }

    /* JADX INFO: compiled from: GetServerChannelVersionInterceptorMulti.java */
    public static class b extends RuntimeException {
        b(String str, Throwable th) {
            super(str, th);
        }
    }

    /* JADX INFO: renamed from: com.bykv.vk.openvk.preload.geckox.d.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: GetServerChannelVersionInterceptorMulti.java */
    public static class C0098c extends RuntimeException {
        C0098c(String str, Throwable th) {
            super(str, th);
        }
    }

    private static long a(List<Pair<String, Long>> list, String str) {
        for (Pair<String, Long> pair : list) {
            if (((String) pair.first).equals(str)) {
                return ((Long) pair.second).longValue();
            }
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Override // com.bykv.vk.openvk.preload.b.d
    public Object a(com.bykv.vk.openvk.preload.b.b<List<UpdatePackage>> bVar, Map<String, List<Pair<String, Long>>> map) throws Exception {
        List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> listC;
        char c = 2;
        char c2 = 0;
        char c3 = 1;
        com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "start get server channel version[v3]... local channel version:", map);
        Map<String, List<UpdatePackage>> mapA = a(map);
        com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f584g, this.l);
        Iterator<Map.Entry<String, List<UpdatePackage>>> it = mapA.entrySet().iterator();
        while (it.hasNext()) {
            Iterator<UpdatePackage> it2 = it.next().getValue().iterator();
            while (it2.hasNext()) {
                UpdatePackage next = it2.next();
                long localVersion = next.getLocalVersion();
                long version = next.getVersion();
                if (version < localVersion) {
                    Object[] objArr = new Object[5];
                    objArr[c2] = next.getChannel();
                    objArr[c3] = "rollback：";
                    objArr[c] = Long.valueOf(localVersion);
                    objArr[3] = "->";
                    objArr[4] = Long.valueOf(version);
                    com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", objArr);
                    File[] fileArrListFiles = new File(this.f584g.p, next.getAccessKey() + File.separator + next.getChannel()).listFiles(new FileFilter() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.1
                        @Override // java.io.FileFilter
                        public final boolean accept(File file) {
                            return file.isDirectory();
                        }
                    });
                    if (fileArrListFiles == null || fileArrListFiles.length == 0) {
                        c = 2;
                        c3 = 1;
                        c2 = 0;
                    } else {
                        int length = fileArrListFiles.length;
                        int i = 0;
                        while (i < length) {
                            File file = fileArrListFiles[i];
                            try {
                                long j = Long.parseLong(file.getName());
                                if (j > version) {
                                    final File file2 = new File(file.getParent(), file.getName() + "--pending-delete");
                                    file.renameTo(file2);
                                    com.bykv.vk.openvk.preload.geckox.utils.e.a().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.2
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            com.bykv.vk.openvk.preload.geckox.utils.c.a(file2);
                                        }
                                    });
                                } else if (j == version) {
                                    it2.remove();
                                }
                            } catch (Exception unused) {
                            }
                            i++;
                            c = 2;
                            c3 = 1;
                            c2 = 0;
                        }
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<String, List<UpdatePackage>>> it3 = mapA.entrySet().iterator();
        while (it3.hasNext()) {
            arrayList.addAll(it3.next().getValue());
        }
        Object objA = null;
        try {
            listC = c(arrayList);
            try {
                objA = bVar.a(arrayList);
                b(listC);
                com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
            } catch (Throwable th) {
                th = th;
                try {
                    com.bykv.vk.openvk.preload.geckox.h.b.b("gecko-debug-tag", "filterChannel:", th);
                    b(listC);
                    com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
                } catch (Throwable th2) {
                    b(listC);
                    com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "all channel update finished");
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            th = th3;
            listC = null;
        }
        a(arrayList);
        return objA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Map<String, List<UpdatePackage>> a(Map<String, List<Pair<String, Long>>> map) throws Exception {
        Object objA;
        String strB = b(map);
        String str = "https://" + this.f584g.m + "/gecko/server/v3/package";
        try {
            this.l.f598f = com.bykv.vk.openvk.preload.geckox.utils.h.a(this.f584g.a);
            Response responseDoPost = this.f584g.f567f.doPost(str, strB);
            com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar = this.l;
            bVar.f599g = responseDoPost.code;
            bVar.f596d = responseDoPost.msg;
            Map<String, String> map2 = responseDoPost.headers;
            String str2 = "";
            if (map2 != null && !map2.isEmpty()) {
                String str3 = map2.get("x-tt-logid");
                if (TextUtils.isEmpty(str3)) {
                    str3 = map2.get("X-Tt-Logid");
                    if (TextUtils.isEmpty(str3)) {
                        String str4 = map2.get("X-TT-LOGID");
                        if (!TextUtils.isEmpty(str4)) {
                            str2 = str4;
                        }
                    } else {
                        str2 = str3;
                    }
                } else {
                    str2 = str3;
                }
            }
            bVar.f597e = str2;
            if (responseDoPost.code != 200) {
                throw new NetworkErrorException("net work get failed, code: " + responseDoPost.code + ", url:" + str);
            }
            String str5 = responseDoPost.body;
            com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "response:", str5);
            try {
                Type type = new com.bykv.vk.openvk.preload.a.c.a<com.bykv.vk.openvk.preload.geckox.model.Response<ComponentModel>>() { // from class: com.bykv.vk.openvk.preload.geckox.d.c.3
                }.c;
                com.bykv.vk.openvk.preload.a.f fVar = com.bykv.vk.openvk.preload.geckox.c.b.a().a;
                if (str5 == null) {
                    objA = null;
                } else {
                    com.bykv.vk.openvk.preload.a.d.a aVar = new com.bykv.vk.openvk.preload.a.d.a(new StringReader(str5));
                    aVar.a = fVar.j;
                    objA = fVar.a(aVar, type);
                    com.bykv.vk.openvk.preload.a.f.a(objA, aVar);
                }
                com.bykv.vk.openvk.preload.geckox.model.Response response = (com.bykv.vk.openvk.preload.geckox.model.Response) objA;
                int i = response.status;
                if (i != 0) {
                    if (i == 2000) {
                        com.bykv.vk.openvk.preload.geckox.a.a.a(this.f584g);
                        return new HashMap();
                    }
                    String str6 = "check update error，unknow status code，response.status：" + response.status;
                    com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar2 = this.l;
                    bVar2.f596d = str6;
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f584g, bVar2);
                    throw new a(str6);
                }
                T t = response.data;
                if (t == 0) {
                    com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar3 = this.l;
                    bVar3.f596d = "check update error：response.data==null";
                    com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f584g, bVar3);
                    throw new a("check update error：response.data==null");
                }
                com.bykv.vk.openvk.preload.geckox.a.a.a(this.f584g.a, ((ComponentModel) t).getUniversalStrategies(), this.f584g.p, this.j);
                Map<String, List<UpdatePackage>> packages = ((ComponentModel) response.data).getPackages();
                if (packages == null || packages.isEmpty()) {
                    com.bykv.vk.openvk.preload.geckox.a.a.a(this.f584g);
                    return new HashMap();
                }
                for (String str7 : this.f584g.f568g) {
                    List<UpdatePackage> list = packages.get(str7);
                    if (list != null && !list.isEmpty()) {
                        for (UpdatePackage updatePackage : list) {
                            updatePackage.setAccessKey(str7);
                            updatePackage.setLocalVersion(a(map.get(str7), updatePackage.getChannel()));
                        }
                    }
                }
                return packages;
            } catch (Throwable th) {
                this.l.f596d = "json parse failed：" + th.getMessage();
                com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f584g, this.l);
                throw new b("json parse failed：" + str5 + " caused by:" + th.getMessage(), th);
            }
        } catch (Exception e2) {
            com.bykv.vk.openvk.preload.geckox.statistic.c.a(this.f584g, this.l);
            throw new C0098c("request failed：url:" + str + ", caused by:" + e2.getMessage(), e2);
        }
    }

    private void a(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return;
        }
        for (UpdatePackage updatePackage : list) {
            com.bykv.vk.openvk.preload.geckox.a.c.a(new File(new File(this.f584g.p, updatePackage.getAccessKey()), updatePackage.getChannel()).getAbsolutePath());
        }
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private String b(Map<String, List<Pair<String, Long>>> map) {
        List<CheckRequestBodyModel.TargetChannel> list;
        CheckRequestBodyModel checkRequestBodyModel = new CheckRequestBodyModel();
        com.bykv.vk.openvk.preload.geckox.b bVar = this.f584g;
        Context context = bVar.a;
        long jLongValue = bVar.j.longValue();
        com.bykv.vk.openvk.preload.geckox.b bVar2 = this.f584g;
        String str = bVar2.k;
        String str2 = bVar2.l;
        String strB = com.bykv.vk.openvk.preload.geckox.utils.a.b(context);
        String strA = com.bykv.vk.openvk.preload.geckox.utils.h.a(context);
        com.bykv.vk.openvk.preload.geckox.b bVar3 = this.f584g;
        checkRequestBodyModel.setCommon(new Common(jLongValue, str, str2, strB, strA, bVar3.o, bVar3.n));
        HashMap map2 = new HashMap();
        for (Map.Entry<String, List<Pair<String, Long>>> entry : map.entrySet()) {
            HashMap map3 = new HashMap();
            for (Pair<String, Long> pair : entry.getValue()) {
                CheckRequestBodyModel.LocalChannel localChannel = new CheckRequestBodyModel.LocalChannel();
                localChannel.localVersion = (Long) pair.second;
                map3.put(pair.first, localChannel);
            }
            map2.put(entry.getKey(), map3);
        }
        try {
            com.bykv.vk.openvk.preload.a.f fVar = com.bykv.vk.openvk.preload.geckox.c.b.a().a;
            this.l.a = fVar.a(map2);
            checkRequestBodyModel.setLocal(map2);
            HashMap map4 = new HashMap();
            for (String str3 : this.f584g.f568g) {
                CheckRequestBodyModel.Group group = new CheckRequestBodyModel.Group();
                group.groupName = this.k;
                Map<String, List<CheckRequestBodyModel.TargetChannel>> map5 = this.i;
                if (map5 != null && !map5.isEmpty() && (list = this.i.get(str3)) != null && !list.isEmpty()) {
                    ArrayList arrayList = new ArrayList();
                    group.targetChannels = arrayList;
                    arrayList.addAll(list);
                }
                map4.put(str3, group);
            }
            this.l.b = fVar.a(map4);
            checkRequestBodyModel.setDeployments(map4);
            Map<String, Map<String, Object>> map6 = this.h;
            if (map6 != null) {
                this.l.c = fVar.a(map6);
                checkRequestBodyModel.setCustom(this.h);
            }
            return fVar.a(checkRequestBodyModel);
        } catch (Throwable unused) {
            return "";
        }
    }

    private static void b(List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> list) {
        if (list == null) {
            return;
        }
        Iterator<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> it = list.iterator();
        while (it.hasNext()) {
            try {
                ((com.bykv.vk.openvk.preload.geckox.g.a) it.next().second).a();
            } catch (Exception e2) {
                com.bykv.vk.openvk.preload.geckox.h.b.b("gecko-debug-tag", "releaseLock:", e2);
            }
        }
    }

    private List<Pair<String, com.bykv.vk.openvk.preload.geckox.g.a>> c(List<UpdatePackage> list) {
        if (list.isEmpty()) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (UpdatePackage updatePackage : list) {
            try {
                File file = new File(new File(this.f584g.p, updatePackage.getAccessKey()), updatePackage.getChannel());
                if (file.isFile()) {
                    com.bykv.vk.openvk.preload.geckox.utils.c.a(file);
                }
                if (!file.mkdirs() && !file.isDirectory()) {
                    com.bykv.vk.openvk.preload.geckox.h.b.a("gecko-debug-tag", "can not create channel dir：", file.getAbsolutePath());
                    throw new RuntimeException("can not create channel dir:" + file.getAbsolutePath());
                }
                com.bykv.vk.openvk.preload.geckox.g.a aVarA = com.bykv.vk.openvk.preload.geckox.g.a.a(file.getAbsolutePath() + File.separator + "update.lock");
                if (aVarA != null) {
                    arrayList.add(new Pair(updatePackage.getChannel(), aVarA));
                    arrayList2.add(updatePackage);
                } else {
                    com.bykv.vk.openvk.preload.geckox.e.a aVar = this.j;
                    updatePackage.getChannel();
                }
            } catch (Exception e2) {
                com.bykv.vk.openvk.preload.geckox.h.b.b("gecko-debug-tag", "filterChannel:", e2);
                updatePackage.getChannel();
                com.bykv.vk.openvk.preload.geckox.e.a aVar2 = this.j;
            }
        }
        list.clear();
        list.addAll(arrayList2);
        return arrayList;
    }

    @Override // com.bykv.vk.openvk.preload.b.d
    public final void a(Object... objArr) {
        super.a(objArr);
        this.f584g = (com.bykv.vk.openvk.preload.geckox.b) objArr[0];
        this.h = (Map) objArr[1];
        this.i = (Map) objArr[2];
        this.j = (com.bykv.vk.openvk.preload.geckox.e.a) objArr[3];
        this.k = (String) objArr[4];
    }
}
