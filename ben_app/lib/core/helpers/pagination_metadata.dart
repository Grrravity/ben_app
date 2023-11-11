import 'package:equatable/equatable.dart';

class PaginatedResponse<DataT> with EquatableMixin {
  PaginatedResponse({
    required this.pagination,
    required this.data,
  });
  factory PaginatedResponse.singlePage(List<DataT> data) => PaginatedResponse(
        data: data,
        pagination: ResponsePagination(
          currentPage: 0,
          lastPage: 0,
          perPage: data.length,
          total: data.length,
          from: 0,
          to: data.length - 1,
        ),
      );

  final ResponsePagination pagination;
  final List<DataT> data;

  /// Creates a copy with mapped data.
  PaginatedResponse<NewDataT> mapData<NewDataT>(
    NewDataT Function(DataT item) map,
  ) =>
      PaginatedResponse(
        data: data.map(map).toList(),
        pagination: this.pagination,
      );

  @override
  List<Object?> get props => [pagination, data];
}

class ResponsePagination with EquatableMixin {
  const ResponsePagination({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
    required this.from,
    required this.to,
  });

  factory ResponsePagination.fromJson(Map<String, dynamic> json) {
    return ResponsePagination(
      currentPage: json['currentPage'] as int,
      lastPage: json['lastPage'] as int,
      perPage: json['perPage'] as int,
      total: json['total'] as int,
      from: json['from'] as int,
      to: json['to'] as int,
    );
  }

  factory ResponsePagination.noResultFromPaginatedRequest(
    RequestPagination pagination,
  ) {
    return ResponsePagination(
      currentPage: pagination.page,
      lastPage: pagination.page - 1,
      perPage: pagination.size,
      total: pagination.size * (pagination.page - 1),
      from: 0,
      to: 0,
    );
  }

  factory ResponsePagination.unknown() {
    return const ResponsePagination(
      currentPage: 0,
      lastPage: 0,
      perPage: 0,
      total: 0,
      from: 0,
      to: 0,
    );
  }

  final int currentPage;
  final int lastPage;
  final int perPage;
  final int total;
  final int from;
  final int to;

  @override
  List<Object> get props => [currentPage, lastPage, perPage, total, from, to];
}

extension OnMetaData on ResponsePagination {
  ResponsePagination copyWith({
    required int page,
    required int maxPage,
    required int perPage,
    required int count,
    required int from,
    required int to,
  }) {
    return ResponsePagination(
      currentPage: page,
      lastPage: maxPage,
      perPage: perPage,
      total: count,
      from: from,
      to: to,
    );
  }

  Map<String, dynamic> toJson() => {
        'current_page': currentPage,
        'last_page': lastPage,
        'per_page': perPage,
        'total': total,
        'from': from,
        'to': to,
      };
}

class RequestPagination with EquatableMixin {
  RequestPagination({
    required this.page,
    required this.size,
    this.sort,
  });

  final int page;
  final int size;
  final PaginationSort? sort;

  @override
  List<Object?> get props => [page, size, sort];
}

enum PaginationOrder {
  ascending,
  descending,
}

class PaginationSort with EquatableMixin {
  PaginationSort({
    required this.field,
    required this.order,
  });

  final String field;
  final PaginationOrder order;

  @override
  List<Object?> get props => [field, order];
}
