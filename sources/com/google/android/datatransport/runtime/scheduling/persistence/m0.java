package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.facebook.applinks.AppLinkData;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.firebase.transport.GlobalMetrics;
import com.google.android.datatransport.runtime.firebase.transport.LogEventDropped;
import com.google.android.datatransport.runtime.firebase.transport.LogSourceMetrics;
import com.google.android.datatransport.runtime.firebase.transport.StorageMetrics;
import com.google.android.datatransport.runtime.firebase.transport.TimeWindow;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.p.b;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.json.b4;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: compiled from: SQLiteEventStore.java */
/* JADX INFO: loaded from: classes2.dex */
@WorkerThread
public class m0 implements j0, com.google.android.datatransport.runtime.p.b, i0 {
    private static final Encoding a = Encoding.of("proto");
    private final n0 b;
    private final com.google.android.datatransport.runtime.time.a c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.time.a f3071d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final k0 f3072e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final com.google.android.datatransport.runtime.o.a<String> f3073f;

    /* JADX INFO: compiled from: SQLiteEventStore.java */
    interface b<T, U> {
        U apply(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: compiled from: SQLiteEventStore.java */
    static class c {
        final String a;
        final String b;

        private c(String str, String str2) {
            this.a = str;
            this.b = str2;
        }
    }

    /* JADX INFO: compiled from: SQLiteEventStore.java */
    interface d<T> {
        T a();
    }

    m0(com.google.android.datatransport.runtime.time.a aVar, com.google.android.datatransport.runtime.time.a aVar2, k0 k0Var, n0 n0Var, com.google.android.datatransport.runtime.o.a<String> aVar3) {
        this.b = n0Var;
        this.c = aVar;
        this.f3071d = aVar2;
        this.f3072e = k0Var;
        this.f3073f = aVar3;
    }

    static /* synthetic */ Long I(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    static /* synthetic */ TimeWindow J(long j, Cursor cursor) {
        cursor.moveToNext();
        return TimeWindow.newBuilder().c(cursor.getLong(0)).b(j).a();
    }

    static /* synthetic */ TimeWindow K(final long j, SQLiteDatabase sQLiteDatabase) {
        return (TimeWindow) x0(sQLiteDatabase.rawQuery("SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1", new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.c
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.J(j, (Cursor) obj);
            }
        });
    }

    static /* synthetic */ Long L(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Boolean N(TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        Long lM = m(sQLiteDatabase, transportContext);
        return lM == null ? Boolean.FALSE : (Boolean) x0(i().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{lM.toString()}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.e0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).moveToNext());
            }
        });
    }

    static /* synthetic */ List Q(SQLiteDatabase sQLiteDatabase) {
        return (List) x0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.h
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.S((Cursor) obj);
            }
        });
    }

    static /* synthetic */ List S(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(TransportContext.builder().b(cursor.getString(1)).d(PriorityMapping.valueOf(cursor.getInt(2))).c(r0(cursor.getString(3))).a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ List V(TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        List<PersistedEvent> listP0 = p0(sQLiteDatabase, transportContext);
        return q(listP0, q0(sQLiteDatabase, listP0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ ClientMetrics X(Map map, ClientMetrics.a aVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            String string = cursor.getString(0);
            LogEventDropped.Reason reasonB = b(cursor.getInt(1));
            long j = cursor.getLong(2);
            if (!map.containsKey(string)) {
                map.put(string, new ArrayList());
            }
            ((List) map.get(string)).add(LogEventDropped.newBuilder().c(reasonB).b(j).a());
        }
        s0(aVar, map);
        aVar.e(l());
        aVar.d(j());
        aVar.c(this.f3073f.get());
        return aVar.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: Y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ ClientMetrics Z(String str, final Map map, final ClientMetrics.a aVar, SQLiteDatabase sQLiteDatabase) {
        return (ClientMetrics) x0(sQLiteDatabase.rawQuery(str, new String[0]), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.u
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.X(map, aVar, (Cursor) obj);
            }
        });
    }

    private /* synthetic */ Object a0(List list, TransportContext transportContext, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            boolean z = cursor.getInt(7) != 0;
            EventInternal.a aVarK = EventInternal.builder().j(cursor.getString(1)).i(cursor.getLong(2)).k(cursor.getLong(3));
            if (z) {
                aVarK.h(new com.google.android.datatransport.runtime.h(v0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                aVarK.h(new com.google.android.datatransport.runtime.h(v0(cursor.getString(4)), t0(j)));
            }
            if (!cursor.isNull(6)) {
                aVarK.g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(PersistedEvent.create(j, transportContext, aVarK.d()));
        }
        return null;
    }

    private LogEventDropped.Reason b(int i) {
        LogEventDropped.Reason reason = LogEventDropped.Reason.REASON_UNKNOWN;
        if (i == reason.getNumber()) {
            return reason;
        }
        LogEventDropped.Reason reason2 = LogEventDropped.Reason.MESSAGE_TOO_OLD;
        if (i == reason2.getNumber()) {
            return reason2;
        }
        LogEventDropped.Reason reason3 = LogEventDropped.Reason.CACHE_FULL;
        if (i == reason3.getNumber()) {
            return reason3;
        }
        LogEventDropped.Reason reason4 = LogEventDropped.Reason.PAYLOAD_TOO_BIG;
        if (i == reason4.getNumber()) {
            return reason4;
        }
        LogEventDropped.Reason reason5 = LogEventDropped.Reason.MAX_RETRIES_REACHED;
        if (i == reason5.getNumber()) {
            return reason5;
        }
        LogEventDropped.Reason reason6 = LogEventDropped.Reason.INVALID_PAYLOD;
        if (i == reason6.getNumber()) {
            return reason6;
        }
        LogEventDropped.Reason reason7 = LogEventDropped.Reason.SERVER_ERROR;
        if (i == reason7.getNumber()) {
            return reason7;
        }
        Logging.d("SQLiteEventStore", "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN", Integer.valueOf(i));
        return reason;
    }

    private void c(final SQLiteDatabase sQLiteDatabase) {
        u0(new d() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.e
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.d
            public final Object a() {
                m0.v(sQLiteDatabase);
                return null;
            }
        }, new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.b
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                m0.w((Throwable) obj);
                throw null;
            }
        });
    }

    static /* synthetic */ Object c0(Map map, Cursor cursor) {
        while (true) {
            if (!cursor.moveToNext()) {
                return null;
            }
            long j = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new c(cursor.getString(1), cursor.getString(2)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Long e0(EventInternal eventInternal, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        if (p()) {
            f(1L, LogEventDropped.Reason.CACHE_FULL, eventInternal.i());
            return -1L;
        }
        long jG = g(sQLiteDatabase, transportContext);
        int iE = this.f3072e.e();
        byte[] bArrA = eventInternal.d().a();
        boolean z = bArrA.length <= iE;
        ContentValues contentValues = new ContentValues();
        contentValues.put(SDKConstants.PARAM_CONTEXT_CONTEXT_ID, Long.valueOf(jG));
        contentValues.put("transport_name", eventInternal.i());
        contentValues.put("timestamp_ms", Long.valueOf(eventInternal.e()));
        contentValues.put("uptime_ms", Long.valueOf(eventInternal.j()));
        contentValues.put("payload_encoding", eventInternal.d().b().a());
        contentValues.put("code", eventInternal.c());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put("payload", z ? bArrA : new byte[0]);
        long jInsert = sQLiteDatabase.insert(b4.M, null, contentValues);
        if (!z) {
            int iCeil = (int) Math.ceil(((double) bArrA.length) / ((double) iE));
            for (int i = 1; i <= iCeil; i++) {
                byte[] bArrCopyOfRange = Arrays.copyOfRange(bArrA, (i - 1) * iE, Math.min(i * iE, bArrA.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(jInsert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", bArrCopyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : eventInternal.h().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(jInsert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(jInsert);
    }

    static /* synthetic */ byte[] f0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int length = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            length += blob.length;
        }
        byte[] bArr = new byte[length];
        int length2 = 0;
        for (int i = 0; i < arrayList.size(); i++) {
            byte[] bArr2 = (byte[]) arrayList.get(i);
            System.arraycopy(bArr2, 0, bArr, length2, bArr2.length);
            length2 += bArr2.length;
        }
        return bArr;
    }

    private long g(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long lM = m(sQLiteDatabase, transportContext);
        if (lM != null) {
            return lM.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", transportContext.a());
        contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.c())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (transportContext.b() != null) {
            contentValues.put(AppLinkData.ARGUMENTS_EXTRAS_KEY, Base64.encodeToString(transportContext.b(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private /* synthetic */ Object g0(Cursor cursor) {
        while (cursor.moveToNext()) {
            f(cursor.getInt(0), LogEventDropped.Reason.MAX_RETRIES_REACHED, cursor.getString(1));
        }
        return null;
    }

    private long getPageSize() {
        return i().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private /* synthetic */ Object i0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        x0(sQLiteDatabase.rawQuery(str2, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.v
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                this.a.h0((Cursor) obj);
                return null;
            }
        });
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    private GlobalMetrics j() {
        return GlobalMetrics.newBuilder().b(StorageMetrics.newBuilder().b(h()).c(k0.a.f()).a()).a();
    }

    private long k() {
        return i().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private TimeWindow l() {
        final long jA = this.c.a();
        return (TimeWindow) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.l
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.K(jA, (SQLiteDatabase) obj);
            }
        });
    }

    static /* synthetic */ Object l0(String str, LogEventDropped.Reason reason, long j, SQLiteDatabase sQLiteDatabase) {
        if (((Boolean) x0(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.y
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return Boolean.valueOf(((Cursor) obj).getCount() > 0);
            }
        })).booleanValue()) {
            sQLiteDatabase.execSQL("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + " + j + " WHERE log_source = ? AND reason = ?", new String[]{str, Integer.toString(reason.getNumber())});
        } else {
            ContentValues contentValues = new ContentValues();
            contentValues.put("log_source", str);
            contentValues.put("reason", Integer.valueOf(reason.getNumber()));
            contentValues.put("events_dropped_count", Long.valueOf(j));
            sQLiteDatabase.insert("log_event_dropped", null, contentValues);
        }
        return null;
    }

    @Nullable
    private Long m(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.a(), String.valueOf(PriorityMapping.toInt(transportContext.c()))));
        if (transportContext.b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.b(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) x0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.q
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.L((Cursor) obj);
            }
        });
    }

    static /* synthetic */ Object m0(long j, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext.a(), String.valueOf(PriorityMapping.toInt(transportContext.c()))}) < 1) {
            contentValues.put("backend_name", transportContext.a());
            contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.c())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
        }
        return null;
    }

    private /* synthetic */ Object n0(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement("DELETE FROM log_event_dropped").execute();
        sQLiteDatabase.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.c.a()).execute();
        return null;
    }

    private boolean p() {
        return k() * getPageSize() >= this.f3072e.f();
    }

    private List<PersistedEvent> p0(SQLiteDatabase sQLiteDatabase, final TransportContext transportContext) {
        final ArrayList arrayList = new ArrayList();
        Long lM = m(sQLiteDatabase, transportContext);
        if (lM == null) {
            return arrayList;
        }
        x0(sQLiteDatabase.query(b4.M, new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{lM.toString()}, null, null, null, String.valueOf(this.f3072e.d())), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.o
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                this.a.b0(arrayList, transportContext, (Cursor) obj);
                return null;
            }
        });
        return arrayList;
    }

    private List<PersistedEvent> q(List<PersistedEvent> list, Map<Long, Set<c>> map) {
        ListIterator<PersistedEvent> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            PersistedEvent next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.b()))) {
                EventInternal.a aVarK = next.a().k();
                for (c cVar : map.get(Long.valueOf(next.b()))) {
                    aVarK.c(cVar.a, cVar.b);
                }
                listIterator.set(PersistedEvent.create(next.b(), next.c(), aVarK.d()));
            }
        }
        return list;
    }

    private Map<Long, Set<c>> q0(SQLiteDatabase sQLiteDatabase, List<PersistedEvent> list) {
        final HashMap map = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).b());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        x0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.t
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                m0.c0(map, (Cursor) obj);
                return null;
            }
        });
        return map;
    }

    private /* synthetic */ Object r(Cursor cursor) {
        while (cursor.moveToNext()) {
            f(cursor.getInt(0), LogEventDropped.Reason.MESSAGE_TOO_OLD, cursor.getString(1));
        }
        return null;
    }

    private static byte[] r0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private void s0(ClientMetrics.a aVar, Map<String, List<LogEventDropped>> map) {
        for (Map.Entry<String, List<LogEventDropped>> entry : map.entrySet()) {
            aVar.a(LogSourceMetrics.newBuilder().c(entry.getKey()).b(entry.getValue()).a());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ Integer u(long j, SQLiteDatabase sQLiteDatabase) {
        String[] strArr = {String.valueOf(j)};
        x0(sQLiteDatabase.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.j
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                this.a.s((Cursor) obj);
                return null;
            }
        });
        return Integer.valueOf(sQLiteDatabase.delete(b4.M, "timestamp_ms < ?", strArr));
    }

    private byte[] t0(long j) {
        return (byte[]) x0(i().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.g
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.f0((Cursor) obj);
            }
        });
    }

    private <T> T u0(d<T> dVar, b<Throwable, T> bVar) {
        long jA = this.f3071d.a();
        while (true) {
            try {
                return dVar.a();
            } catch (SQLiteDatabaseLockedException e2) {
                if (this.f3071d.a() >= ((long) this.f3072e.b()) + jA) {
                    return bVar.apply(e2);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    static /* synthetic */ Object v(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        return null;
    }

    private static Encoding v0(@Nullable String str) {
        return str == null ? a : Encoding.of(str);
    }

    static /* synthetic */ Object w(Throwable th) {
        throw new com.google.android.datatransport.runtime.p.a("Timed out while trying to acquire the lock.", th);
    }

    private static String w0(Iterable<PersistedEvent> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<PersistedEvent> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    static /* synthetic */ SQLiteDatabase x(Throwable th) {
        throw new com.google.android.datatransport.runtime.p.a("Timed out while trying to open db.", th);
    }

    @VisibleForTesting
    static <T> T x0(Cursor cursor, b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public void A(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            i().compileStatement("DELETE FROM events WHERE _id in " + w0(iterable)).execute();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public void B(final TransportContext transportContext, final long j) {
        o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.f
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                m0.m0(j, transportContext, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public Iterable<TransportContext> C() {
        return (Iterable) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.x
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.Q((SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public long E(TransportContext transportContext) {
        return ((Long) x0(i().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.a(), String.valueOf(PriorityMapping.toInt(transportContext.c()))}), new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.m
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return m0.I((Cursor) obj);
            }
        })).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public boolean F(final TransportContext transportContext) {
        return ((Boolean) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.k
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.N(transportContext, (SQLiteDatabase) obj);
            }
        })).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public void G(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            final String str = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + w0(iterable);
            final String str2 = "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name";
            o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.r
                @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
                public final Object apply(Object obj) {
                    this.a.j0(str, str2, (SQLiteDatabase) obj);
                    return null;
                }
            });
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public Iterable<PersistedEvent> H(final TransportContext transportContext) {
        return (Iterable) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.d
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.V(transportContext, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    @Nullable
    public PersistedEvent O(final TransportContext transportContext, final EventInternal eventInternal) {
        Logging.d("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", transportContext.c(), eventInternal.i(), transportContext.a());
        long jLongValue = ((Long) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.s
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.e0(eventInternal, transportContext, (SQLiteDatabase) obj);
            }
        })).longValue();
        if (jLongValue < 1) {
            return null;
        }
        return PersistedEvent.create(jLongValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.p.b
    public <T> T a(b.a<T> aVar) {
        SQLiteDatabase sQLiteDatabaseI = i();
        c(sQLiteDatabaseI);
        try {
            T tExecute = aVar.execute();
            sQLiteDatabaseI.setTransactionSuccessful();
            return tExecute;
        } finally {
            sQLiteDatabaseI.endTransaction();
        }
    }

    public /* synthetic */ Object b0(List list, TransportContext transportContext, Cursor cursor) {
        a0(list, transportContext, cursor);
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.b.close();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i0
    public void d() {
        o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.p
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                this.a.o0((SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i0
    public ClientMetrics e() {
        final ClientMetrics.a aVarNewBuilder = ClientMetrics.newBuilder();
        final HashMap map = new HashMap();
        final String str = "SELECT log_source, reason, events_dropped_count FROM log_event_dropped";
        return (ClientMetrics) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.n
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.Z(str, map, aVarNewBuilder, (SQLiteDatabase) obj);
            }
        });
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.i0
    public void f(final long j, final LogEventDropped.Reason reason, final String str) {
        o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.i
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                m0.l0(str, reason, j, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    @VisibleForTesting
    long h() {
        return k() * getPageSize();
    }

    public /* synthetic */ Object h0(Cursor cursor) {
        g0(cursor);
        return null;
    }

    @VisibleForTesting
    SQLiteDatabase i() {
        final n0 n0Var = this.b;
        Objects.requireNonNull(n0Var);
        return (SQLiteDatabase) u0(new d() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.f0
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.d
            public final Object a() {
                return n0Var.getWritableDatabase();
            }
        }, new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.a
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                m0.x((Throwable) obj);
                throw null;
            }
        });
    }

    public /* synthetic */ Object j0(String str, String str2, SQLiteDatabase sQLiteDatabase) {
        i0(str, str2, sQLiteDatabase);
        return null;
    }

    @VisibleForTesting
    <T> T o(b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase sQLiteDatabaseI = i();
        sQLiteDatabaseI.beginTransaction();
        try {
            T tApply = bVar.apply(sQLiteDatabaseI);
            sQLiteDatabaseI.setTransactionSuccessful();
            return tApply;
        } finally {
            sQLiteDatabaseI.endTransaction();
        }
    }

    public /* synthetic */ Object o0(SQLiteDatabase sQLiteDatabase) {
        n0(sQLiteDatabase);
        return null;
    }

    public /* synthetic */ Object s(Cursor cursor) {
        r(cursor);
        return null;
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.j0
    public int z() {
        final long jA = this.c.a() - this.f3072e.c();
        return ((Integer) o(new b() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.w
            @Override // com.google.android.datatransport.runtime.scheduling.persistence.m0.b
            public final Object apply(Object obj) {
                return this.a.u(jA, (SQLiteDatabase) obj);
            }
        })).intValue();
    }
}
