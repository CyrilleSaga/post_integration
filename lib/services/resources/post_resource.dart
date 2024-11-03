part of '../api.dart';

class PostResource {
  ApiClient client = ApiClient();

  Future<List<Post>> getPosts() async {
    const uri = '/posts';
    final response = await client.fetchData(path: uri, method: 'GET');
    return Post.fromJsonList(response.data);
  }

  Future<Post> createPost(Post post) async {
    const uri = '/posts';
    final response = await client.fetchData(path: uri, method: 'POST', data: post);
    return Post.fromJson(response.data);
  }

  Future<Post> getPost(int id) async {
    final uri = '/posts/$id';
    final response = await client.fetchData(path: uri, method: 'GET');
    return Post.fromJson(response.data);
  }

  Future<Post> updatePost(Post post) async {
    final uri = '/posts/${post.id}';
    final response = await client.fetchData(path: uri, method: 'PUT', data: post);
    return Post.fromJson(response.data);
  }

  Future<void> deletePost(int id) async {
    final uri = '/posts/$id';
    await client.fetchData(path: uri, method: 'DELETE');
  }
}
